# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_backbone_moment/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_backbone_moment"
  spec.version       = RailsBackboneMoment::VERSION
  spec.authors       = ["Homebase1"]
  spec.email         = ["contact@joinhomebase.com"]

  spec.summary       = %q{Backbone Moment}
  spec.description   = %q{Simple wrapper for moment.js on backbone models}
  spec.homepage      = "https://github.com/pioneerworks/rails-backbone-moment"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.4.10", "< 3"
  spec.add_development_dependency "rake", ">= 13", "< 14"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec_junit_formatter"
end
