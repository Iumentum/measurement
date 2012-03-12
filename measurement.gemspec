# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "measurement"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ronni Steen Rasmussen"]
  s.date = "2012-03-12"
  s.description = "Automaticly convert measurements units."
  s.email = "ronni.rasmussen@gmail.com"
  s.extra_rdoc_files = ["README.doc", "lib/measurement.rb"]
  s.files = ["Manifest", "README.doc", "Rakefile", "lib/measurement.rb", "measurement.gemspec"]
  s.homepage = "http://github.com/Iumentum/measurement"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Measurement", "--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "measurement"
  s.rubygems_version = "1.8.10"
  s.summary = "Automaticly convert measurements units."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
