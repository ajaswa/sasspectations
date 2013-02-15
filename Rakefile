require "bundler/gem_tasks"
load File.expand_path('../lib/tasks/sasspectations.rake', __FILE__)

namespace :sasspectations do
  task :examples do
    Rake::Task['sasspectations'].invoke('examples/spec/scss')
  end
end

task :default => ['sasspectations:examples']
