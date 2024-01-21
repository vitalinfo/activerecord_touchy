
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activerecord_touchy/version'

Gem::Specification.new do |spec|
  spec.name          = 'activerecord_touchy'
  spec.version       = ActiverecordTouchy::VERSION
  spec.authors       = ['Vital Ryabchinskiy']
  spec.email         = ['vital.ryabchinskiy@gmail.com']

  spec.summary       = 'Ability to touch has_many and has_one relations'
  spec.summary       = 'Extend AR to use touch for has_many and has_one relations'
  spec.homepage      = 'https://github.com/vitalinfo/activerecord_touchy'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.6'
  spec.add_development_dependency 'rubocop', '~> 0.50'
  spec.add_development_dependency 'sqlite3', '~> 1.3'

  spec.add_runtime_dependency 'activerecord', '>= 4.0.0'
end
