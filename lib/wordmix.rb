require "wordmix/version"

module Wordmix
  def self.obfuscate(text)
    words = text.split(/\s+/)
    words.map do |word|
      word, puncuation = word.split(/\b/)
      word_array = word.chars
      first = word_array.shift
      last = word_array.pop
      word_array.shuffle!
      [first, *word_array, last, puncuation].join.downcase
    end.join(' ')
  end
end
