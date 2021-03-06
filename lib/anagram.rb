require("pry")

class Anagram
  attr_reader :first_input, :second_input

  def initialize(first_input, second_input)
    @first_input = first_input.downcase
    @second_input = second_input.downcase
  end

  def anagram?()
    if (@first_input.chars.sort! == @second_input.chars.sort!)
      "These words are anagrams."
    elsif !(@first_input =~ /[aeiouy]/) && !(@second_input =~ /[aeiouy]/)
      "You need to input actual words."
    end
  end

  def antigram?()
    @first_input.chars.sort!.each do |letter|
      if (@second_input.chars.sort!.include?(letter))
        return neither?()
      else
        return "These words have no letter matches and are antigrams."
      end
    end
  end

  def neither?()
    return "These words are neither anagram nor antigram"
  end
end