class Word < ActiveRecord::Base
  
  
  def self.anagrams(word)
    user_canonical = word.chars.sort_by(&:downcase).join
    found_anagrams = []

    Word.find_each do |word| 
        if user_canonical == word.anagram 
          found_anagrams << word.word 
        end   
    end 
    found_anagrams
  end

end
