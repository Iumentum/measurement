require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('measurement', '0.1.0') do |p|
  p.description    = "Automaticly convert measurements units."
  p.url            = "http://github.com/Iumentum/measurement"
  p.author         = "Ronni Steen Rasmussen"
  p.email          = "ronni.rasmussen@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = [
    #p.add_runtime_dependency('alchemist')
  ]
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }