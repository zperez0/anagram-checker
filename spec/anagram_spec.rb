require('rspec')
require('anagram')


describe(Anagram) do
  describe('#anagram?') do
    it('will check if inputs are anagram') do 
      input = Anagram.new('ruby', 'bury')
      input2 = Anagram.new('tea', 'eat')
      expect(input.anagram?).to(eq('These words are anagrams.'))
      expect(input2.anagram?).to(eq('These words are anagrams.'))
      end

      it('will check for vowels') do 
        input = Anagram.new('1g32', 'znw')
        expect(input.anagram?).to(eq('You need to input actual words.'))
      end

      it('will lowercase the users input') do
        input = Anagram.new('RUBY', 'bury')
        expect(input.anagram?).to(eq('These words are anagrams.'))
      end
    end
  end