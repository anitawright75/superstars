class SuperstarController < ApplicationController

		get '/' do
			{:message => 'all items soon'}.to_json 
		end

		get '/fab' do
			# use active record because it is awesome
			# teach you how to rule the database 
			@christopher = Superstar.new
			@christopher.talent 'Socialite'
			@christopher.name = 'Christopher McAwesome'
			@christopher.outfit = 'blue sweater'
			@christopher.save
			@christopher.to_json

			#crud
			#create 
			#DELETE 
			#update
			#read

		end

	end
