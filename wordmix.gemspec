lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "wordmix/version"

Gem::Specification.new do |spec|
  spec.name          = "wordmix"
  spec.version       = Wordmix::VERSION
  spec.authors       = ["Alex Clink"]
  spec.email         = ["code@alexclink.com"]

  spec.summary       = "Obfuscate words but keep them readable!"
  spec.description   = <<~DESC
    Words can still be readable when the first and last letter are in the same position...
    the rest of the letters can be in any position!
  DESC
  spec.homepage      = "https://github.com/sleepinginsomniac/wordmix"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = %w[wordmix]
  spec.require_paths = %w[lib]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
