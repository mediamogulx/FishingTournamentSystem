class SignupController < ApplicationController
    def index
       @tournamentID = params[:tid]
       @anglerID = params[:aid]
    end
    
    def new
        @anglerParticipation = AnglerParticipation.create!(TournamentID: params[:tid], AnglerID: params[:aid])
        @tournament = Tournament.find(params[:tid])
        flash[:success] = "Registration Complete for #{@tournament.Name}"
        redirect_to angler_index_path
    end
end