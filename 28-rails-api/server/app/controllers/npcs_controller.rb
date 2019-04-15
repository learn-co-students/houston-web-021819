class NpcsController < ApplicationController

    def index
        render json: Npc.all, 
            methods: [ :label ], 
            include: { 
                steps: { 
                    except: [ :id, :updated_at, :created_at, :npc_id ]
                    } 
            }
    end

    def show
        render json: Npc.find(params[:id])
    end


end
