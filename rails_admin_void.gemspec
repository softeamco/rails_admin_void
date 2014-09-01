$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_void/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_void"
  s.version     = RailsAdminVoid::VERSION
  s.authors     = ["Alexander Selivanov"]
  s.email       = ["selivandex@gmail.com"]
  s.homepage    = "http://github.com/softeamco/rails_admin_void"
  s.summary     = "For active merchant void action."
  s.description = "TODO: Description of RailsAdminVoid."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.4"
end
