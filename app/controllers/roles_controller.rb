class RolesController < ApplicationController
  def index
    roles = Actor.find( params[:actor_id]).roles
    render :json => roles.as_json(
    {except:[:created_at, :updated_at, :movie_id, :actor_id, :id],
    include:
          {movie: {only: [:title, :year]}}}
        )

  end
end
