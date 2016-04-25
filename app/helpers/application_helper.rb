module ApplicationHelper
    def get_tournament_sponsors(tournamentID)
        @sponsors = []
        @sponsorParticipation = SponsorParticipation.where(TournamentID: tournamentID)
        @sponsorParticipation.each do |sponsor|
            @sponsor = Sponsor.find(sponsor.SponsorID)
            @sponsors.push(@sponsor.Name)
        end
        @sponsors = @sponsors.join(", ")
    end
end