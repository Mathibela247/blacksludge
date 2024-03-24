# -*- encoding: utf-8 -*-
# stub: zoom_rb 1.1.8 ruby lib

Gem::Specification.new do |s|
  s.name = "zoom_rb".freeze
  s.version = "1.1.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kyle Boe".freeze]
  s.date = "2023-04-10"
  s.description = "A Ruby API wrapper for zoom.us API".freeze
  s.email = ["kyle@boe.codes".freeze]
  s.homepage = "https://github.com/hintmedia/zoom_rb".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.7".freeze
  s.summary = "zoom.us API wrapper".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<httparty>.freeze, [">= 0.13"])
    s.add_runtime_dependency(%q<json>.freeze, [">= 1.8"])
    s.add_runtime_dependency(%q<jwt>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry-byebug>.freeze, [">= 0"])
    s.add_development_dependency(%q<hint-rubocop_style>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 3.8"])
    s.add_development_dependency(%q<rspec_junit_formatter>.freeze, [">= 0.4.1"])
    s.add_development_dependency(%q<simplecov>.freeze, [">= 0.22.0"])
    s.add_development_dependency(%q<simplecov-lcov>.freeze, [">= 0.8.0"])
    s.add_development_dependency(%q<webmock>.freeze, [">= 3.4"])
  else
    s.add_dependency(%q<httparty>.freeze, [">= 0.13"])
    s.add_dependency(%q<json>.freeze, [">= 1.8"])
    s.add_dependency(%q<jwt>.freeze, [">= 0"])
    s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
    s.add_dependency(%q<hint-rubocop_style>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 3.8"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, [">= 0.4.1"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0.22.0"])
    s.add_dependency(%q<simplecov-lcov>.freeze, [">= 0.8.0"])
    s.add_dependency(%q<webmock>.freeze, [">= 3.4"])
  end
end
