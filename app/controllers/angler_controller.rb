class AnglerController < ApplicationController
    def index
        #load angler info
        @angler = Angler.where("id = (?)", 1)
        @anglerFName = @angler.first.FirstName
        @anglerLName = @angler.first.LastName
        @anglerEmail = @angler.first.Email
        @anglerID = @angler.first.AnglerID
        
        #load registered tournaments
        @anglerParticipation = AnglerParticipation.all
        @registrations = []
        #@anglerParticipation.each do |participation|
        #    if participation.AnglerID = @anglerID
        #        Tournament.find_by(TournamentID: participation.TournamentID))
        #    end
        #end
       
       #load registered and unregistered tournaments
        @tournaments = Tournament.all
        @unregisteredTournaments = []
        @tournaments.each do |tournament|
            if @anglerParticipation == []
                @unregisteredTournaments.push(tournament)
            else
                @anglerParticipation.each do |participation|
                    if tournament.TournamentID == participation.TournamentID and participation.AnglerID == @anglerID
                        @registrations.push(tournament)
                    else
                        @unregisteredTournaments.push(tournament)
                    end
                end
            end
        end
    end
    
    def new
        redirect_to signup_index_path(:aid => 1, :tid => params[:id])
    end
    
    def render_registration_link
       link_to 'Register',  new_angler_path(:id => tournament.TournamentID) 
    end
end