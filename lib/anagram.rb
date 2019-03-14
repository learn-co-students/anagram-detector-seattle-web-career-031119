class Anagram

  def initialize(word)
    @word = word
  end

  attr_accessor :word

  def match(words)
    match = []
    words.each {|element|
      if element.split("").sort == @word.split("").sort
        match << element
      end
    }
    match
  end

end
