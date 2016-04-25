class AnglerController < ApplicationController
    def index
        #load angler info
        @angler = Angler.where("id = (?)", 1)
        @anglerFName = @angler.first.FirstName
        @anglerLName = @angler.first.LastName
        @anglerEmail = @angler.first.Email
        @anglerID = @angler.first.AnglerID
        
        #load registered tournaments
        @anglerParticipation = AnglerParticipation.where(AnglerID: @anglerID)
        @registrations = []
       
       #load registered and unregistered tournaments
        @tournaments = Tournament.all
        @unregisteredTournaments = []
        @tournaments.each do |tournament|
            if @anglerParticipation.empty?
                @unregisteredTournaments.push(tournament)
            else
                registered = false
                @anglerParticipation.each do |participation|
                    if tournament.TournamentID == participation.TournamentID
                        @registrations.push(tournament)
                        registered = true
                    end
                end
            end
            if not registered
                @unregisteredTournaments.push(tournament)
            end
        end
        @unregisteredTournaments = @unregisteredTournaments.uniq
    end
    
    def new
        redirect_to tournament_index_path(:aid => 1, :tid => params[:id])
    end
end