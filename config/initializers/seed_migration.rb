# config/initializers/seed_migration.rb

SeedMigration.config do |c|
  c.extend_native_migration_task = true
  # c.ignore_ids = true
end

SeedMigration.register Apiv1::User do
  exclude :id, :password
end
SeedMigration.register Apiv1::Tile