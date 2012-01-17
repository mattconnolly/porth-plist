# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "porth-plist/version"

Gem::Specification.new do |s|
  s.name        = "porth-plist"
  s.version     = Porth::Plist::VERSION
  s.authors     = ["Matt Connolly"]
  s.email       = ["matt.connolly@me.com"]
  s.homepage    = ""
  s.summary     = %q{Plain Old Ruby Template PLIST handler}
  s.description = %q{Plain Old Ruby Template PLIST handler}

  s.rubyforge_project = "porth-plist"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_runtime_dependency 'porth'
  s.add_runtime_dependency 'plist'
  s.add_runtime_dependency 'actionpack', '>= 3.1.0', '< 4.0.0'
  s.add_runtime_dependency 'activerecord', '>= 3.1.0', '< 4.0.0'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake',     '~> 0.9.2'
end
