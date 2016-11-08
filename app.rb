class ApplicationController < Sinatra::Base


require 'bundler'
Bundler.require


set :views, File.dirname(__FILE__) + '/views'
set :public_folder, File.dirname(__FILE__) + 'public'

#enabling sessions 
#connect to our database
enable :sessions, :logging

end 
