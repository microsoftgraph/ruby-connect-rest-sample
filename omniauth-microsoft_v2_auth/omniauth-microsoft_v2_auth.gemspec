# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/microsoft_v2_auth/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-microsoft_v2_auth"
  spec.version       = Omniauth::MicrosoftV2Auth::VERSION
  spec.authors       = ["Caitlin Bales"]
  spec.email         = ["c.bales@outlook.com"]
  spec.summary       = %q{omniauth provider for Microsoft V2 Authentication}
  spec.description   = %q{omniauth provider for Microsoft V2 Authentication}
  spec.homepage      = "https://github.com/cbales/omniauth-microsoft_v2_auth"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "omniauth-oauth2"
end
