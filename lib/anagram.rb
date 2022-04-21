require('pry')

class Anagram
  attr_accessor :first_input, :second_input

  def initialize(first_input, second_input)
    @first_input = first_input
    @second_input = second_input
  end

  def anagram_checker()
  @first_input = @first_input.chars.sort
  @second_input = @second_input.chars.sort
  if @first_input == @second_input
    true
  else
    false
    end
  end
end







# create antigram method ex: tea, eat
# creat vowel method? use include?
#  >> append
# match? 
