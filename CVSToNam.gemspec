# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'CVSToNam/version'

Gem::Specification.new do |spec|
  spec.name          = "CVSToNam"
  spec.version       = CVSToNam::VERSION
  spec.authors       = ["Chris Anders"]
  spec.email         = ["chris at hell-labs.org"]
  spec.description   = %q{This gem converts CSV files to NAM used by Sportlicht video boards}
  spec.summary       = %q{The DLRG uses an application called jAuswertung for its competitions. This gem can be used to convert the CSV export file of jAuswertung to configuration files for OMEGA Ares21/Sportlicht video boards.}
  spec.homepage      = "http://www.hell-labs.dexy"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
