# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "emblem-rails"
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alex Speller", "Alex Matchneer"]
  s.date = "2013-11-26"
  s.description = "Use emblem.js with ember-rails - see https://github.com/machty/emblem.js"
  s.email = ["alex@alexspeller.com"]
  s.homepage = "http://github.com/alexspeller/emblem-rails"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Use emblem.js with ember-rails"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<barber-emblem>, ["~> 0.1.1"])
      s.add_runtime_dependency(%q<ember-rails>, [">= 0.14.0"])
    else
      s.add_dependency(%q<barber-emblem>, ["~> 0.1.1"])
      s.add_dependency(%q<ember-rails>, [">= 0.14.0"])
    end
  else
    s.add_dependency(%q<barber-emblem>, ["~> 0.1.1"])
    s.add_dependency(%q<ember-rails>, [">= 0.14.0"])
  end
end
