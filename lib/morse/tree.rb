module Morse
  MORSE_RUBY_ADAPTER = { '.' => :dot, '-' => :dash, ' ' => :break }

  class Tree
    attr_reader :root

    def initialize
      @root = Node.new(nil, ' ')
    end

    def learn(morse_table = {})
      morse_table.each do |letter,morse|
        @root = push_recursively(@root, letter, morse, 0)
      end
    end

    def humanize(morse_string)
      out = get_recursively(morse_string, @root)
      out
    end

    private

    def push_recursively(node, letter, morse, index)
      morse_char = morse[index]
      node = Node.new(@root) if node.nil?
      if index < morse.length
        node.send("#{mra[morse_char]}=", push_recursively(node.send("#{mra[morse_char]}"), letter, morse, index+1))
      else
        node.value = letter
      end
      node
    end

    def get_recursively(morse_string = '', node = nil, letters = [], index = 0)
      # "... --- ...  ... --- ..."
      node = @root if node.nil?
      char = morse_string[index]

      letters.push(node.value) if char == ' '

      if index < morse_string.length
        node = node.send("#{mra[char]}")
        get_recursively(morse_string, node, letters, index+1)
      else
        letters.push(node.value)
        letters.join()
      end

    rescue => e
      p(e)
      letters.join()
    end

    def mra
      MORSE_RUBY_ADAPTER
    end

    class Node
      attr_accessor :value, :dot, :dash, :root

      def initialize(root = nil, value = '')
        @root = root
        @value = value
      end

      def break
        @root || self
      end
    end
  end
end
