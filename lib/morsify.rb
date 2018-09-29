require_relative './morse/chars'

class Morsify
  def call(str)
    str.chars.map { |i| MORSE_CHARS.merge({ ' ' => ' '})[i.downcase] }.join(' ').strip
  end
end
