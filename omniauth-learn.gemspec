# -*- encoding: utf-8 -*-

require File.expand_path('../lib/omniauth-learn/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors = ["Sophie DeBenedetto", "Charles Pletcher"]
  gem.email = ["sophie@flatironschool.com", "chuck@flatironschool.com"]
  gem.description = %q{Official OmniAuth strategy for Learn.co.}
  gem.summary = %q{Official OmniAuth strategy for Learn.co.}
  gem.homepage = "https://github.com/pletcher/omniauth-learn"
  gem.license = "MIT"


  gem.executables   = `git ls-files -- bin/*`.split("\n").map do |f|
    File.basename(f)
  end
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-learn"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Learn::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  # Nothing lower than omniauth-oauth2 1.1.1
  # http://www.rubysec.com/advisories/CVE-2012-6134/
  gem.add_dependency 'omniauth-oauth2', '>= 1.1.1', '< 2.0'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
