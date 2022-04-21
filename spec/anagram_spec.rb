require('rspec')
require('anagram')



  describe('#anagram_checker') do
    it('return true if the words are the same ') do
      expect(anagram_checker('bye', 'bye')).to(eq(true))
    end
  end