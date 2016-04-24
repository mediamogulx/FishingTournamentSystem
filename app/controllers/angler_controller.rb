class AnglerController < ApplicationController
    def index
       @angler = Angler.where("id = (?)", 1)
       @anglerFName = @angler.first.FirstName
       @anglerLName = @angler.first.LastName
       @anglerEmail = @angler.first.Email
       @tournaments = Tournament.first(10)
       
    end
end