# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hiyoko/version'

Gem::Specification.new do |spec|
  spec.name          = "hiyoko"
  spec.version       = Hiyoko::VERSION
  spec.authors       = ["Akimasa Kimura"]
  spec.email         = ["kimura.akimasa@gmail.com"]

  spec.summary       = %q{simple tool to create a project from Swift Docs}
  spec.description   = %q{project generator from Swift Docs}
  spec.homepage      = "https://github.com/akimacho/hiyoko"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = "hiyoko"
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri"
  spec.add_dependency "thor"
  spec.add_dependency "activerecord"
  spec.add_dependency "sqlite3"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
