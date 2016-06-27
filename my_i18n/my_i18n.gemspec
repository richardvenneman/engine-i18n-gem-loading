require './lib/my_i18n/version'

Gem::Specification.new do |s|
  s.name        = 'my_i18n'
  s.version     = MyI18n::VERSION
  s.authors     = ["Richard Venneman"]
  s.email       = 'richardvenneman@me.com'
  s.summary     = 'Test case.'

  s.license     = 'MIT'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = Dir['test/**/*']

  s.add_dependency 'i18n'

  s.add_development_dependency 'rake', '~> 11.1'
end
