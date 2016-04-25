class SignupController < ApplicationController
    def index
       @tournamentID = params[:tid]
       @anglerID = params[:aid]
    end
    
    def new
        @anglerParticipation = AnglerParticipation.create!(TournamentID: params[:tid], AnglerID: params[:aid])
        flash[notice] = "Registration Complete for tournament #{params[:tid]}"
        redirect_to angler_index_path
    end
end