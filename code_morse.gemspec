Gem::Specification.new do |s|
  s.name        = 'code_morse'
  s.version     = '0.0.5'
  s.date        = '2018-09-29'
  s.summary     = ".... . .-.. .-.. ---  -- --- .-. ... . -.-.--"
  s.description = "A simple 'Morse Code' back and forth converter."
  s.authors     = ["Alex Miasoiedov"]
  s.email       = 'alexmiasoiedov@gmail.com'
  s.files       = ["lib/code_morse.rb", "lib/morsify.rb", "lib/morse/tree.rb", "lib/morse/chars.rb"]
  s.homepage    =
    'http://rubygems.org/AlexMiasoiedov/code_morse'
  s.license       = 'MIT'

  s.executables << 'code_morse'
end