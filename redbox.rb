require 'sinatra'
require 'pry'


get '/' do 
	erb :index
end


get '/titles' do
	@titles = [ 
	  { name: 'The Revenant', year: 2015, rating: 5 },
	  { name: 'Room', year: 2015, rating: 5 },
	  { name: 'Mad Max', year: 2015, rating: 5 },
	  { name: 'Bridge of Spies', year: 2015, rating: 5 },
	  { name: 'Spotlight', year: 2015, rating: 5 },
	  { name: 'The Big Short', year: 2015, rating: 5 },
	  { name: 'The Martian', year: 2015, rating: 5 },
	  { name: 'Steve Jobs', year: 2015, rating: 5 },
	  { name: 'Brooklyn', year: 2015, rating: 5 },
	  { name: 'Furious 7', year: 2015, rating: 3 }
	]
	erb :titles
	
end


# get '/search' do
# 	erb :search
# end


# get '/cart' do
# end


# post '/search' do
# 	"add code here"
# end

