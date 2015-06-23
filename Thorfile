require "git"
require "logger"
require "thor"

class Simwms < Thor
  class << self
    def build_ember(dir)
      FileUtils.cd("./#{dir}") do
        `npm install && bower install && ember build --environment production`
      end
      puts "done"
    end
    def source_root
      __dir__
    end
  end
  include Thor::Actions
  @@git = Git.open __dir__, log: Logger.new(STDOUT)

  desc "build", "builds the simwms application onto the release branch"
  def build
    @@git.checkout "master"
    build_config
    build_uiux
  end

  desc "package DIR", "packages the built simwms application into a temporary directory (defaults to tmp)"
  def package(directory="tmp")
    store_apiv1 directory
    store_uiux directory
    store_config directory
  end

  desc "release DIR", "puts together the release branch and puts the complete application from the temporary directory (defaults to tmp) to it"
  def release(directory="tmp")
    @@git.checkout "release"
    clean_stage
    directory "tmp", ".", force: true
  end
  private
  def clean_stage
    StagePurger.new.invoke :purge
  end
  def store_apiv1(d)
    directory "apiv1", d
  end
  def store_config(d)
    directory "config/dist", File.join(d, "public"), skip: true
    copy_file "config/dist/index.html", File.join(d, "public", "config.html")
  end
  def store_uiux(d)
    directory "uiux/dist", File.join(d, "public"), skip: true
  end
  def build_uiux
    self.class.build_ember "uiux"
  end
  def build_config
    self.class.build_ember "config"
  end
end

class StagePurger < Thor
  include Thor::Actions
  def self.source_root
    __dir__
  end
  desc "purge DIR", "deletes everything in the currently directory unless it's listed in the gitignore"
  def purge(dir=".")
    _append_gitignore dir

    _files_in(dir).each do |file|
      remove_file file
    end

    _directories_in(dir).each do |dir|
      purge dir
    end
  end
  private
  def _append_gitignore(dir)
    @gitignore_patterns ||= []
    return unless File.exists? File.join(dir, ".gitignore")
    ignores = _parse_gitignore File.read File.join(dir, ".gitignore")
    absolute_ignores = ignores.map { |i| File.join(dir, i) }
    @gitignore_patterns += absolute_ignores
  end
  def _parse_gitignore(ignored_contents)
    ignored_contents.split("\n").map do |line|
      line.gsub /#.*$/, ""
    end.map(&:strip).reject do |line|
      line == ""
    end
  end
  def _ignored?(f)
    if @gitignore_patterns.any? { |pattern| File.fnmatch? pattern, f }
      say "ignoring: " + f
      true
    else
      false
    end
  end
  def _files_in(dir)
    _not_ignored(dir).select do |file|
      File.file? file
    end
  end
  def _directories_in(dir)
    _not_ignored(dir).select do |d|
      Dir.exist? d
    end
  end
  def _not_ignored(dir)
    Dir[File.join(dir, "*")].reject do |f|
      _ignored? f
    end
  end
end
