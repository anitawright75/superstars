class FairytaleController < ApplicationController

  get '/' do
    # get all
    Fairytale.all.to_json
  end

  get '/:id' do
    @id = params[:id]
    Fairytale.find(@id).to_json
    # get by id
  end

  post '/' do
    # create
    @name = params[:name]
    @talent = params[:talent]
    @outfit = params[:outfit]

    @model = Fairytale.new
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
    @title = params[:title]
    @author = params[:author]
    @comments = params[:comments]
    @moral = params[:moral]

    @model = Fairytale.find(@id)
    @model.title = @title
    @model.author = @author
    @model.comments = @comments
    @model.moral = @moral
    @model.save
    
    @model.to_json
  end

  delete '/:id' do
    # delete
    @id = params[:id]
    @model = Fairytale.find(@id)
    @model.destroy
    { :message => "Fairytale " + @id + " is over."}.to_json
  end
end
