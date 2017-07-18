class RolesController < ApplicationController
  def index
    roles = Actor.find( params[:actor_id]).roles
    render :json => roles.as_json(
      # {only: :character}
        { include:
          {movie: {only: [:title, :year]}}
          }
        )

  end
end
