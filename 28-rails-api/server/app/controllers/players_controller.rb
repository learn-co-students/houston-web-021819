class PlayersController < ApplicationController

    def index
        render json: Player.all
    end

    def update
        player = Player.find(params[:id])
        player.update(player_attributes)
        render json: player
    end

    def player_attributes
        params.permit( :name, :x, :y )
    end

end
