require('rspec')
require('anagram')


describe(Anagram) do
  describe('#anagram_checker') do
    it('return true if the words are the same ') do
      input = Anagram.new('bye', 'bye')
      expect(input.anagram_checker).to(eq(true))
    end

    it('return false if words are not the same') do
      input = Anagram.new('bye', 'hi')
      expect(input.anagram_checker).to(eq(false))
    end
  end
end