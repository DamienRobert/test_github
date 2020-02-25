lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'another/version'

Gem::Specification.new do |gem|
  gem.name          = "another"
  gem.version       = Another::VERSION
  gem.summary       = %q{Another gemspec}
  gem.description   = %q{Put another gemspec in the same repository}
  gem.license       = "MIT"
  gem.authors       = ["Damien Robert"]
  gem.email         = "Damien.Olivier.Robert+gems@gmail.com"
  gem.homepage      = "https://github.com/DamienRobert/another#readme"

  gem.files         = `git ls-files`.split($/)

  `git submodule --quiet foreach --recursive pwd`.split($/).each do |submodule|
    submodule.sub!("#{Dir.pwd}/",'')

    Dir.chdir(submodule) do
      `git ls-files`.split($/).map do |subpath|
        gem.files << File.join(submodule,subpath)
      end
    end
  end
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

end
