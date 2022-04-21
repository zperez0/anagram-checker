require('pry')

class Anagram
  attr_accessor(:word1, :word2)

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram_checker()
    if @word1 === @word2
      true
    else
      false
    end
  end
end
