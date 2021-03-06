require("rspec")
require("anagram")

describe(Anagram) do
  describe("#anagram?") do
    it("will check if inputs are anagram") do
      input = Anagram.new("ruby", "bury")
      input2 = Anagram.new("tea", "eat")
      expect(input.anagram?).to(eq("These words are anagrams."))
      expect(input2.anagram?).to(eq("These words are anagrams."))
    end

    it("will check for vowels") do
      input = Anagram.new("1g32", "znw")
      expect(input.anagram?).to(eq("You need to input actual words."))
    end

    it("will check to see if actual word") do
      input = Anagram.new("!2", "@hg")
      expect(input.anagram?).to(eq("You need to input actual words."))
    end

    it("will lowercase the users input") do
      input = Anagram.new("RUBY", "bury")
      expect(input.anagram?).to(eq("These words are anagrams."))
    end

    it("will check if two sentences are an anagram") do
      input = Anagram.new("The Morse Code", "Here come dots")
      expect(input.anagram?).to(eq("These words are anagrams."))
    end
  end

  describe("#antigram?") do
    it("will check for if letter matches and are antigrams") do
      input = Anagram.new("cat", "dog")
      expect(input.antigram?).to(eq("These words have no letter matches and are antigrams."))
    end
  end

  describe("#neither?") do
    it("will check if neither words are anagrams nor antigrams") do
      input = Anagram.new("try", "tri")
      expect(input.neither?).to(eq("These words are neither anagram nor antigram"))
    end
  end
end