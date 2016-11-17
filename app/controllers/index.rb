get '/' do
  erb :index
end

get '/:new_word' do
	@new_word = params[:new_word]
  @words = Word.anagrams(@new_word)
  ### aqui metes rodo el codigo para encomntrar todos los amagramas 
  #llamar método para encontrar anagramas
  #obtner las palabras anagramas y mandarlas a la vista a través de variable de instancia
  erb :word
end

post '/new_word' do
  redirect to ("/#{params[:user_word]}")
end