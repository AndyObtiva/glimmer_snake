# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'glimmer/launcher'
require 'rake'
require 'juwelier'
Juwelier::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "glimmer_snake"
  gem.homepage = "http://github.com/AndyObtiva/glimmer_snake"
  gem.license = "MIT"
  gem.summary = %Q{Glimmer Snake}
  gem.description = %Q{Glimmer Snake game cross-platform desktop GUI application built with Glimmer DSL for LibUI to run on Mac, Windows, and Linux. Gem ships with glimmer_snake script for launching game.}
  gem.email = "andy.am@gmail.com"
  gem.authors = ["Andy Maleh"]

  gem.files = Dir['VERSION', 'TODO.md', 'CHANGELOG.md', 'glimmer_snake.gemspec', 'LICENSE.txt', 'app/**/*', 'bin/**/*', 'config/**/*', 'db/**/*', 'docs/**/*', 'fonts/**/*', 'icons/**/*', 'images/**/*', 'lib/**/*', 'script/**/*', 'sounds/**/*', 'videos/**/*']
  gem.require_paths = ['lib', 'app']
  gem.executables = ['glimmer_snake']
  
  version = File.exist?('VERSION') ? File.read('VERSION') : ""
  gem.post_install_message = ["\nGlimmer Snake #{version} was installed!\nPlay by running:\n\nglimmer_snake\n\n"]
  
  # dependencies defined in Gemfile
end
Juwelier::RubygemsDotOrgTasks.new
require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['spec'].execute
end

task :default => :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "glimmer_snake #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'glimmer/rake_task'
