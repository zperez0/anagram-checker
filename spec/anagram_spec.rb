require('rspec')
require('anagram')


describe(Anagram) do
  describe('#anagram_checker') do
    it('return true if the words are an anagram') do 
      input = Anagram.new('ruby', 'bury')
      expect(input.anagram_checker).to(eq(true))
      end

      it('return false if the words are not an anagram') do 
        input = Anagram.new('bye', 'by')
        expect(input.anagram_checker).to(eq(false))
        end
  end
end