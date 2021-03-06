class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    # creature_params = params.require(:creature).permit(:name, :description)
    creature = Creature.new(creature_params)
    if creature.save
      redirect_to creature_path(creature)
    end
  end

  def show
    creature_id = params[:id]
    @creature = Creature.find_by_id(creature_id)
  end

  def edit
    creature_id = params[:id]
    @creature = Creature.find_by_id(creature_id)
  end

  def update
    creature_id = params[:id]
    creature = Creature.find_by_id(creature_id)

    creature.update_attributes(creature_params)
    redirect_to creature_path(creature)
  end

  def destroy
    # get the creature id from the url params
    creature_id = params[:id]

    # use `creature_id` to find the creature in the database
    # and save it to a variable
    creature = Creature.find_by_id(creature_id)

    # destroy the creature
    creature.destroy

    # redirect to creatures index
    redirect_to creatures_path
    # redirect_to creatures_path is equivalent to:
    # redirect_to "/creatures"
  end

  private

  def creature_params
    params.require(:creature).permit(:name,:description)
  end
end
