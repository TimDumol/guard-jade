Gem::Specification.new do |s|
  s.name        = 'guard-jade'
  s.version     = '0.1.2'
  s.date        = '2013-04-17'
  s.summary     = "A Guard plugin to watch and compile Jade files"
  s.description = "A Guard plugin to watch and compile Jade files"
  s.authors     = ["Tim Joseph dumol"]
  s.email       = 'tim@timdumol.com'
  s.files       = ["lib/guard/jade.rb"]
  s.homepage    =
    'https://github.com/TimDumol/guard-stylus'
  s.licenses    = ['Apache 2.0']
  s.add_runtime_dependency 'guard', '~> 1.7.0'
  s.add_runtime_dependency 'guard-helpers', '~> 0.0.3'
end
