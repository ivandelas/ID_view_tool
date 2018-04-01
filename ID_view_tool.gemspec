
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ID_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "ID_view_tool"
  spec.version       = IDViewTool::VERSION
  spec.authors       = ["Ivan Delaš"]
  spec.email         = ["ivandelas@gmail.com"]

  spec.summary       = %q{View specific methods.}
  spec.description   = %q{Provides generated html data for webpage.}
  spec.homepage      = "http://www.ivandelas.me/"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
