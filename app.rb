require 'sinatra'

get '/' do
	"hello!"
end 

get '/secret' do
	"Nothing to see here...move along, now!"
end 

get '/random-cat' do
	 @name = ["Viking", "Amigo", "Oscar"].sample
	 erb(:index)
end 


get '/named-cat' do
  p params.values
	 @name = params[:name]
	 erb(:index)
end 


