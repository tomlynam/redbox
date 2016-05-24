Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

require 'sinatra'
require 'pry'
require 'titleize'

$cart = []
$list = Title.new

get '/' do 
	erb :index
end


post '/' do
	$list
	$cart = []
	erb :index
end


get '/titles' do
	$list
	erb :titles
end


get '/search' do
	erb :search
end

post '/search' do
	movie = params[:title].downcase
	
	$list.titles.each do |key|
		if movie == key[:name].downcase
			@movie_name = movie.titleize
			@movie_year = key[:year]
			@movie_rating =  key[:rating]
			@yes_result = "Yes, we have #{@movie_name}!"
		end
	end
	$cart << @movie_name
	erb :search
end


get '/cart' do
	$cart
	erb :cart
end

post '/cart' do
	$cart.each do |item|
	$list.titles.delete_if { |key| key[:name] == item }
	end
	erb :confirmation
end
