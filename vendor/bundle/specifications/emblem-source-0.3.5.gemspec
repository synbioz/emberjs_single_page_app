# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "emblem-source"
  s.version = "0.3.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alex Matchneer"]
  s.date = "2013-12-02"
  s.description = "Emblem.js source code wrapper for (pre)compilation gems."
  s.email = ["machty@gmail.com"]
  s.homepage = "https://github.com/machty/emblem.js/"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Emblem.js source code wrapper"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
