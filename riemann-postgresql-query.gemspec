Gem::Specification.new do |s|
  s.rubyforge_project = 'riemann-postgresql-query'

  s.name = 'riemann-postgresql-query'
  s.version = '0.1.0'
  s.author = 'Stuart Quin'
  s.email = 'stuart.quin@gmail.com'
  s.homepage = 'https://github.com/stuartquin/riemann-postgresql-query'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Run queries on postgresql and report results back to riemann'
  s.description = 'Run queries on postgresql and report results back to riemann'
  s.license = 'MIT'

  s.add_dependency 'riemann-tools', '>= 0.2.1'
  s.add_dependency 'pg', '>= 0.17.1'

  s.files = ['bin/riemann-postgresql-query', 'README.md']
  s.executables << 'riemann-postgresql-query'

  s.has_rdoc = false

  s.required_ruby_version = '>= 2.0.1'
end
