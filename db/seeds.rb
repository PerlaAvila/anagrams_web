=begin
Una vez que tengas el archivo words dentro de la carpeta de tu aplicación necesitamos crear un programa dentro de db/seed.rb que lea el diccionario y cree por cada palabra una entrada en nuestra tabla Words en la base de datos y rellene la segunda columna con su versión canonical.

Para facilitar el proceso de crear la versión canonical agrega a tu modelo un método parecido al que usaste en el ejercicio anterior de anagramas.

Una vez que quieras ejecutar el código de db/seed.rb deberás correr la siguiente rake task.
=end
# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información.


def canonical(word)
 word.chars.sort
end 
dictionary = File.open("/Users/codea_mac_18/Desktop/p/anagrams_skeleton/words")
dictionary.read.split.each do |word|
  anagrams = canonical(word).join
  Word.create(word: word, canonical: anagrams)
end
