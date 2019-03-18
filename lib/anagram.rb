require "pry"

class Anagram
  attr_accessor :text, :string

  def initialize(text)
    @text = text
  end

  def make_sort(string)
    text_hash = {}
    string.split('').map { |letter|
      text_hash.keys.include?(letter) ? text_hash[letter] += 1 : text_hash[letter] = 1
    }
    text_hash.sort
  end

  def match(string)
    match_array = []
    string.each { |word|
      if make_sort(word) == make_sort(@text)
        match_array << word
      end
    }
    match_array
  end

end
#ana = Anagram.new('allergy')

#pry.Start
