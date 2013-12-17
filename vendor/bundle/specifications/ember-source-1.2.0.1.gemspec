# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ember-source"
  s.version = "1.2.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yehuda Katz"]
  s.date = "2013-11-25"
  s.description = "Ember.js source code wrapper for use with Ruby libs."
  s.email = ["wycats@gmail.com"]
  s.homepage = "https://github.com/emberjs/ember.js"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Ember.js source code wrapper."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<handlebars-source>, ["~> 1.1.2"])
    else
      s.add_dependency(%q<handlebars-source>, ["~> 1.1.2"])
    end
  else
    s.add_dependency(%q<handlebars-source>, ["~> 1.1.2"])
  end
end
