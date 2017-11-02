class HomeController < ApplicationController
    before_action :authorize, except: [:index, :show]

    def index
        @home = Home.all
    end
    
end