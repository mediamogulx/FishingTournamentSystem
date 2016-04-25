class TournamentController < ApplicationController
    def index
        #set vars
        @aid = params[:aid]
        @tid = params[:tid]
        
        #load tournament info
        if @tid != nil 
            @tournament = Tournament.find(@tid)
        else
            @tournament = Tournament.first
        end
    end
    
    def new
        redirect_to signup_index_path(:aid => params[:aid], :tid => params[:tid])
    end
end