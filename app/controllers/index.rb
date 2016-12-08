get '/' do
  erb :index
end

# get '/:new_word' do

#   @new_word = params[:new_word]
 
#   @canonical_words = Word.canonical(@new_word)

#   @words = Word.decompose_word(@new_word)
#   erb :word
# end

post '/new_word' do
  redirect to ("/#{params[:user_word]}")
end

get '/:new_word' do
  @word = params[:new_word]
  @my_word = Word.new(word: @word, canonical: @word.split('').sort.join('')) #something like this
  erb :word
end