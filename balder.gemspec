$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "balder/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "balder"
  s.version     = Balder::VERSION
  s.authors     = ["Derek Victory"]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = "Summary of Balder Engine."
  s.description = "Balder Engine"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.3"
  s.add_dependency "carrierwave"
  s.add_dependency "authlogic"
  s.add_dependency "rmagick"
  #s.add_dependency "mini_exiftool"

  # s.add_dependency "jquery-rails"

  s.add_development_dependency "pg"
  s.require_path = 'lib'
end
