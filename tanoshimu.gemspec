$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "tanoshimu/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tanoshimu"
  s.version     = Tanoshimu::VERSION
  s.authors     = ["Akinyele Cafe-Febrissy"]
  s.email       = ["akinyele.kafe.febrissy@gmail.com"]
  s.homepage    = "https://anime.akinyele.ca"
  s.summary     = File.read('README.md')
  s.description = "Simple REST api for anime.akinyele.ca"
  s.license     = "MIT"

  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency 'activeresource'

  s.add_development_dependency 'pry'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'dotenv'
end
