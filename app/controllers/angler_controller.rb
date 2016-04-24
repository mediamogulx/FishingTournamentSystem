class AnglerController < ApplicationController
    def index
       @angler = Angler.where("id = (?)", 1)
       @anglerName = @angler.first.FirstName
    end
end