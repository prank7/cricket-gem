Gem::Specification.new do |s|
  s.name                  = "cricket"
  s.version               = "1.0.0"
  s.author                = "Prank7"
  s.email                 = "prashant.abhishek7g@gmail.com"
  s.summary               = "Lets you play a cricket game in console"
  s.description           = File.read(File.join(File.dirname(__FILE__), 'README'))
  s.homepage              = "https://github.com/prank7/cricket-gem"

  s.files                 = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
  s.test_files            = Dir["spec/**/*"]
  s.executables           = ['cricket']

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'
end