lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tw/version'

Gem::Specification.new do |gem|
  gem.name          = "tw"
  gem.version       = Tw::VERSION
  gem.authors       = ["Sho Hashimoto"]
  gem.email         = ["hashimoto@shokai.org"]
  gem.description   = %q{CUI Twitter Client.}
  gem.summary       = gem.description
  gem.homepage      = "http://shokai.github.io/tw"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/).reject{|i| i=="Gemfile.lock" }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'twitter', '>= 6.2.0'
  gem.add_dependency 'oauth', '>= 0.5.4'
  gem.add_dependency 'json', '>= 2.1.0'
  gem.add_dependency 'rainbow', '>= 3.0.0'
  gem.add_dependency 'args_parser', '>= 0.2.0'
  gem.add_dependency 'parallel', '>= 1.12.0'
  gem.add_dependency 'launchy', '>= 2.4.3'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'bundler', '~> 1.15'
  gem.add_development_dependency 'minitest'
end
