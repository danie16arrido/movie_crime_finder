class ActorsController < ApplicationController

  def index
    actors = Actor.all
    render :json => actors
  end

  def show
    actor = Actor.find( params[:id])
    render :json => actor
  end

end
