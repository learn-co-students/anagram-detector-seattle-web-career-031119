# Your code goes here!
require "pry"

class Anagram
  def initialize(base)
    @base = base
  end

  def match(comparables)
    letters_in_base = letters_in(@base)
    comparables.each_with_object([]) do |comparable, acc|
      letters_in_comparable = letters_in(comparable)
      acc << comparable if letters_in_base == letters_in_comparable
    end
  end

  private

  def letters_in(word)
    word.split("").each_with_object({}) {|letter, acc|
      acc[letter].nil? ? acc[letter] = 1 : acc[letter] += 1
    }
  end

end
