require 'sinatra/base'

#ontrollers
require './controllers/application_controller'
#models 

require './models/superstar'

map('/'){ run ApplicationController }
map('/api/superstars') { run SuperstarController }


# require './app' #requires app.rb

#life is good?
#before and after 

before '/*' do 
	puts "Route Log:"
	puts request.host
	puts params
	puts request.path
end

after '/*' do
	puts 'Completed Route Log:'
	puts response.body
	puts response.status
end

# run Sinatra::Application #starts server