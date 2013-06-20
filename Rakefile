require 'rake'
require 'rspec/core/rake_task'
require_relative 'db/config'
require_relative 'lib/sunlight_legislators_importer'



desc "create the database"
task "db:create" do
  touch 'db/ar-sunlight-legislators.sqlite3'
end

desc "drop the database"
task "db:drop" do
  rm_f 'db/ar-sunlight-legislators.sqlite3'
end

desc "drop, create, migrate database"
task "db:reset" do
  rm_f 'db/ar-sunlight-legislators.sqlite3'
  touch 'db/ar-sunlight-legislators.sqlite3'
  exec 'rake db:migrate'
end

desc "migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)."
task "db:migrate" do
  # Probably building a list of migrations
  ActiveRecord::Migrator.migrations_paths << File.dirname(__FILE__) + 'db/migrate'
  # Use the verbose configuration
  ActiveRecord::Migration.verbose = ENV["VERBOSE"] ? ENV["VERBOSE"] == "true" : true
  # Run all of the migrations for the current version  
  ActiveRecord::Migrator.migrate(ActiveRecord::Migrator.migrations_paths, ENV["VERSION"] ? ENV["VERSION"].to_i : nil) do |migration|
    ENV["SCOPE"].blank? || (ENV["SCOPE"] == migration.scope)
  end
end

desc 'Populate the databse'
task "db:populate" do
  SunlightLegislatorsImporter.import
end

desc 'Retrieves the current schema version number'
task "db:version" do
  puts "Current version: #{ActiveRecord::Migrator.current_version}"
end

desc "Run basic ruby tests"
task "specs" do
  exec 'ruby spec/legislator_spec.rb'
end

desc "Run the rspecs"
RSpec::Core::RakeTask.new(:rspecs)


desc "Open sqlite3 console"
task "db:console" do
  exec "sqlite3 db/ar-sunlight-legislators.sqlite3"
end

task :default  => :specs
