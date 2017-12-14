lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kakunin/version'

Gem::Specification.new do |spec|
  spec.name          = 'kakunin'
  spec.version       = Kakunin::VERSION
  spec.authors       = ['Victor Jimenez']
  spec.email         = ['betabandido@gmail.com']

  spec.summary       = 'Kakunin is a minimalistic tool to prompt users for confirmation.'
  spec.homepage      = 'https://github.com/betabandido/kakunin'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
