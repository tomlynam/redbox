require 'sinatra'
require 'pry'


get '/' do 
	erb :index
end


get '/titles' do
	@titles = { 
	 the_revenant: { 
	   name: 'The Revenant', year: 2015, rating: 5
	 },
	 room: {
	   name: 'Room', year: 2015, rating: 5
	 },
	 mad_max: {
	   name: 'Mad Max', year: 2015, rating: 5
	 },
	 bridge_of_spies: { 
	   name: 'Bridge of Spies', year: 2015, rating: 5
	 },
	 spotlight: { 
	   name: 'Spotlight', year: 2015, rating: 5 
	 },
	 the_big_short: {
	   name: 'The Big Short', year: 2015, rating: 5
	 },
	 the_martian: {
	   name: 'The Martian', year: 2015, rating: 5
	 },
	 steve_jobs: {
	   name: 'Steve Jobs', year: 2015, rating: 5
	 },
	  brooklyn: {
	   name: 'Brooklyn', year: 2015, rating: 5
	 },
	  furious_7: {
	   name: 'Furious 7', year: 2015, rating: 3
	 }
	}
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

