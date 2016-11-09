class Happy_PlacesController < ApplicationController

  get '/' do
    # get all
    Happyplaces.all.to_json
  end

  get '/:id' do
    @id = params[:id]
    Happyplaces.find(@id).to_json
    # get by id
  end

  post '/' do
    # create
    @name = params[:name]
    @talent = params[:talent]
    @outfit = params[:outfit]

    @model = Happyplaces.new
    @model.name = @name
    @model.talent = @talent
    @model.outfit = @outfit
    @model.save

    # place a breakpoint in ruby!
    # binding.pry
    # ^ the code stops here
    @model.to_json
  end

  patch '/:id' do
    # update
    @id = params[:id]
    @name = params[:name]
    @lat = params[:lat]
    @lon = params[:lon]

    @model = Happyplaces.find(@id)
    @model.name = @name
    @model.lat = @lat
    @model.lon = @lon
    @model.save
    @model.to_json
  end

  delete '/:id' do
    # delete
    @id = params[:id]
    @model = Happyplaces.find(@id)
    @model.destroy
    { :message => "Happyplaces " + @id + " cannot be found."}.to_json
  end
end
