require('pry')

class Anagram
  attr_accessor :first_input, :second_input

  def initialize(first_input, second_input)
    @first_input = first_input
    @second_input = second_input
  end

  def anagram_checker()
  @first_input = @first_input.chars
  @second_input = @second_input.chars
  [@first_input, @second_input]
  end
end
  



  # second_input = @word2.each_char do |letter|
  #    [letter]
  # end
      # want to compare each letter 
    # if first_input.match?(second_input) === second_input
    #   true
    # else
    #   false




# create antigram method ex: tea, eat
# creat vowel method? use include?
#  >> append
