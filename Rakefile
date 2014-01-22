require 'rake'
require 'rspec/core/rake_task'
require 'yaml'

attributes = YAML.load_file('attributes.yml')

desc "Run serverspec to all hosts"
task :serverspec => 'serverspec:all'

namespace :serverspec do
  task :all => attributes.keys.map {|key| 'serverspec:' + key.split('.')[0] }
  attributes.keys.each do |key|
    desc "Run serverspec to #{key}"
    RSpec::Core::RakeTask.new(key.split('.')[0].to_sym) do |t|
      ENV['TARGET_HOST'] = key
      t.pattern = 'spec/{' + attributes[key][:roles].join(',') + '}/*_spec.rb'
    end
  end
end 
