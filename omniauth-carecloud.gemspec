# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-carecloud/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-carecloud"
  spec.version       = OmniAuth::CareCloud::VERSION
  spec.authors       = ["John Nadeau"]
  spec.email         = ["johnnnadeau@gmail.com"]

  spec.summary       = %q{A CareCloud OAuth2 strategy for OmniAuth.}
  spec.description   = %q{A CareCloud OAuth2 strategy for OmniAuth.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_runtime_dependency 'omniauth-oauth2'
  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
