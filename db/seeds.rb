# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 
require 'csv'

def words_dictionary
  CSV.foreach('words') do |row|
    canonical = row[0].chars.sort_by(&:downcase).join
    Word.create(word: row[0], anagram: canonical)
  end
end 

words_dictionary