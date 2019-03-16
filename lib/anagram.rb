# Your code goes here!
require "pry"

class Anagram
attr_accessor :word

def initialize(word)
  @word = word
end

def match(words)
  hash = {}
  words.each do |word|
    value = word.split("").sort
    hash[word]=value
    end
    hash.select { |k,v| v == word.split("").sort }.keys
  end
end
