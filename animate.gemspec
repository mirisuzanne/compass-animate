Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.2.beta.0"

  # Gem Details
  s.name = "animate"
  s.authors = ["Eric Meyer", "Maxime Fabre"]
  s.summary = %q{Compass port of Animate.css by Dan Eden.}
  s.description = %q{Compass port of Animate.css by Dan Eden, allows you to choose only the animations you need, with or without associated classes.}
  s.email = "eric@oddbird.net"
  s.homepage = "https://github.com/ericam/compass-animate"

  # Gem Files
  s.files = %w(README.md)
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")

  # Gem Bookkeeping
  s.add_dependency("sass", [">= 3.2.0"])
  s.add_dependency("compass", [">= 0.13.alpha.0"])
end

