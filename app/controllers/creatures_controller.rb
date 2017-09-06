class CreaturesController < ApplicationController
  # display all creatures
  def index
    # get all creatures from db and save to instance variable
    @creatures = Creature.all
    # render the index view (it has access to instance variable)
    # render json: @creatures
    # remember the default behavior is to render :index
  end

  # show the new creature form
  def new
    # remember the default behavior is to render :new
  end

  def creature
    # whitelist params
    # create a new creature in the database from the params
    # if creature saves, redirect to route that displays all creatures
  end
end
