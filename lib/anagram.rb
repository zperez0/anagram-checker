require('pry')

class Anagram
  attr_reader :first_input, :second_input

  def initialize(first_input, second_input)
    @first_input = first_input.downcase
    @second_input = second_input.downcase
  end

  def anagram?()

    if (@first_input.chars.sort! == @second_input.chars.sort!)
      'These words are anagrams.'
    elsif !(@first_input =~ /[aeiou]/) && !(@second_input =~ /[aeiou]/)
      'You need to input actual words.'
    end
  end
end