require 'pry'

class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    split_word = word.split("").sort
      array.select {|word| word.split("").sort == split_word
      }
  end

end# Your code goes here!


# split_word = word.split("").sort
# binding.pry
# #split the word that is
# split_array = array.split(", ").sort
#
# #entered into it's letters.
# #sort these letters alphabetically
# if split_array.each {|array| array.split(", ").sort = split_word
#
# }
# #split the words in the array into their own array separated by their letters
#go through each of the arrays to see if there is a match with the word.
#if there is a match, do something
#if not, do something else
