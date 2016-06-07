require 'sinatra'

get '/' do
	"hello!"
end 

get '/secret' do
	"Nothing to see here...move along, now!"
end 

get '/cat' do
	 @name = ["Viking", "Amigo", "Oscar"].sample
	 erb(:index)
end 