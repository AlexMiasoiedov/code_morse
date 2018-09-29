require_relative './morse/chars'
require_relative './morse/tree'
require_relative './morsify'

at_exit { puts("\nbye bye!") }

resp = []

morse_tree = Morse::Tree.new
morse_tree.learn(MORSE_CHARS)

# TODO: wrap morse characters in sigle string

ARGV.each do |param|
  if param =~ /\w/
    resp.push(Morsify.new.call(param))
  else # TODO: add regex for recognizing morse code only
    resp.push(morse_tree.humanize(param))
  end
end

puts(resp.join('  '))
