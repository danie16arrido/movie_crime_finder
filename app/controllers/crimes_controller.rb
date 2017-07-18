class CrimesController < ApplicationController

  def index
    crimes = Actor.find(params[:actor_id]).crimes
    render :json => crimes
  end

end
