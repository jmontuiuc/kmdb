class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
  end

  def show
    # Your code goes here
    # Use the information after the slash in the URL to look up the actor with the corresponding ID number
    # Store the actor in the @actor instance variable so the view can format it
    actorid = params[:id]
    actorinfo = Actor.find_by({:id => actorid})
    @actor = actorinfo
  end

end
