require "git"
require "logger"
require "thor"
namespace :simwms do

  task :package do
    Rake::Task["simwms:build"].invoke
    Rake::Task["simwms:release"].invoke
  end

  desc "prepares the release products from the tmp dir"
  task release: [:ensure_release!] do
    Rake::Task["simwms:dist_apiv1"].invoke
    Rake::Task["simwms:dist_config"].invoke
    Rake::Task["simwms:dist_uiux"].invoke
  end

  desc "moves apiv1 out of tmp and into the present directory"
  task :dist_apiv1 do
    Commands.new.dist_apiv1
  end

  desc "moves uiux files out of tmp and into the vendor directory"
  task :dist_uiux do
    Commands.new.dist_uiux
  end

  desc "moves the config files out of tmp and into the vendor directory"
  task :dist_uiux do
    Commands.new.dist_config
  end

  desc "switches to the release branch"
  task :ensure_release! do
    g = Git.open __dir__, log: Logger.new(STDOUT)
    g.checkout "release"
  end

  desc "builds the entire application and puts it onto the release branch"
  task build: [:ensure_master!] do
    Rake::Task["simwms:build_config"].invoke
    Rake::Task["simwms:build_uiux"].invoke
    Rake::Task["simwms:store_config"].invoke
    Rake::Task["simwms:store_uiux"].invoke
    Rake::Task["simwms:store_apiv1"].invoke
  end

  desc "ensures we're on the master branch, or we throw an error message"
  task :ensure_master! do
    g = Git.open __dir__, log: Logger.new(STDOUT)
    g.checkout "master"
  end

  desc "moves everything from apiv1 into the current directory"
  task store_apiv1: [:ensure_tmp] do
    FileUtils.cp_r "apiv1", "tmp/"
  end

  desc "moves all the ember dist from ./uiux into the tmp folder"
  desc store_uiux: [:ensure_tmp] do
    FileUtils.mv "uiux/dist", "tmp/"
  end

  desc "ensures the tmp work directory is present"
  desc :ensure_tmp do
    FileUtils.mkdir_p "tmp"
  end

  desc "moves all the ember dist from ./config into the tmp folder"
  desc store_config: [:ensure_tmp] do
    FileUtils.mv "config/dist", "tmp/"
  end

  desc "goes into ./config and builds"
  task :build_config do
    Commands.build_ember "config"
  end

  desc "goes into ./uiux and builds"
  task :build_uiux do
    Commands.build_ember "uiux"
  end

end

class Commands < Thor
  include Thor::Actions
  class << self
    def build_ember(dir)
      FileUtils.cd("./#{dir}") do
        sh "npm install && bower install && ember build --environment production"
      end
      puts "done"
    end
  end
  def dist_apiv1
    directory "tmp/apiv1", "."
  end
  def dist_uiux
    directory "tmp/uiux/dist", "./public"
  end
  def dist_config
    directory "tmp/config/dist", "./public"
    FileUtils.mv "public/index.html", "public/config.html"
  end
end