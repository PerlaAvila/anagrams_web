class Word < ActiveRecord::Base
  # Remember to create a migration!
  def anagrams
   anagrams = Word.where(canonical: self.canonical)
   #we search in the column of our database where we have our words in alphabetical order, for the words that match with our user_input.
    matches = []
    anagrams.each do |anagram|
      if anagram.word != self.word #to not include the same word in our list we filter with this condition.
        matches << anagram.word
      end
    end

    matches #finally we print the final array with our matched words.

  end

end
