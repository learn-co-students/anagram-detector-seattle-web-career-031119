require 'pry'

class Anagram

  attr_reader :input

  def initialize(input)
    @input = input
  end

  def match(anagram_list)
    anagram_list.select do |potential_match|
      #split the words into their characters, sort those alphabetically, then rejoin for comparison
      potential_match.chars.sort.join == input.chars.sort.join
    end
  end
end
