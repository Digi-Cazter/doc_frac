# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
require 'doc_frac/version'

Gem::Specification.new do |spec|
  spec.name          = "doc_frac"
  spec.version       = DocFrac::VERSION
  spec.authors       = ["Donavan White"]
  spec.email         = ["digi.cazter@gmail.com"]
  spec.description   = %q{Ruby wrapper library for DocFrac document converter}
  spec.summary       = %q{Simple Ruby wrapper library for using DocFrac on Unix systems, handles the following document formats: RTF, HTML, and ASCII. This includes RTF to HTML and HTML to RTF.}
  spec.homepage      = "https://github.com/Digi-Cazter/doc_frac"
  spec.license       = "MIT"
  spec.files         = Dir["README.md","Gemfile","Rakefile", "spec/*", "lib/**/*"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
