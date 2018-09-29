require_relative './morse/chars'
require_relative './morse/tree'
require_relative './morsify'

at_exit { puts("\nbye bye!") }

class CodeMorse
  attr_reader :morse_tree

  def initialize
    @morse_tree = Morse::Tree.new
    @morse_tree.learn(MORSE_CHARS)
  end

  def call(params)
    params = (params.is_a?(Array) ? params : [params]).flatten
    out = []

    params.each do |param|
      if param =~ /\w/
        out.push(Morsify.new.call(param))
      else # TODO: add regex for recognizing morse code only
        out.push(morse_tree.humanize(param))
      end
    end

    out.join('  ')
  end
end
