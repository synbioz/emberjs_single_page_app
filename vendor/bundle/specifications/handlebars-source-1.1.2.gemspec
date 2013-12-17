# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "handlebars-source"
  s.version = "1.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yehuda Katz"]
  s.date = "2013-11-25"
  s.description = "Handlebars.js source code wrapper for (pre)compilation gems."
  s.email = ["wycats@gmail.com"]
  s.homepage = "https://github.com/wycats/handlebars.js/"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Handlebars.js source code wrapper"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
