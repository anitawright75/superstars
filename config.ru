require 'sinatra/base'

#ontrollers
require './controllers/application_controller'
require './controllers/superstar_controller'
require './controllers/fairytale_controller'
require './controllers/happyplaces_controller'
# require models here 

require './models/superstar'
require './models/fairytale'
require './models/happyplaces'

map('/'){ run ApplicationController }
map('/api/superstars') {run SuperstarController}
map('/api/fairytales') {run FairytaleController}
map('/api/happyplaces') {run HappyPlacesController}



# require './app' #requires app.rb

#life is good?
#before and after 

before '/*' do 
	puts "Route Log:"
	puts request.host
	puts params
	puts request.path
	puts request.body
end

after '/*' do
	puts 'Completed Route Log:'
	puts response.body
	puts response.status
end

# run Sinatra::Application #starts server