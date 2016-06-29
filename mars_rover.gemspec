# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Yi Wen"]
  gem.email         = ["ywen.github@gmail.com"]
  gem.description   = %q{Mars}
  gem.summary       = %q{Mars}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mars_rover"
  gem.require_paths = ["lib"]
  gem.license       = "MIT"
  gem.version       = "0.0.1"
  gem.add_development_dependency(%q<rspec>)
  gem.add_development_dependency(%q<rake>)
end
