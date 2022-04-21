require('rspec')
require('anagram')


describe(Anagram) do
  describe('#anagram_checker') do
    it('return true if the words are the same ') do
      input = Anagram.new('bye', 'bye')
      expect(input.anagram_checker).to(eq(true))
    end
  end
end