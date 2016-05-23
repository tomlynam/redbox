Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }


require 'sinatra'
require 'pry'
require 'titleize'


get '/' do 
	erb :index
end


get '/titles' do
	erb :titles
end


get '/search' do
	erb :search
end


# get '/cart' do
# end


post '/search' do
	@list = Title.new
	
	movie = params[:title].downcase
	
	@list.titles.each do |key|
		if movie == key[:name].downcase
			movie_name = movie.titleize
			@yes_result = "Yes, we have #{movie_name}!"
		end
	end
	erb :search
end