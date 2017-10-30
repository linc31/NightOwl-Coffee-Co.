class HomeController < ApplicationController
    before_action :set_house, only: [:show, :edit, :update, :destroy]
    before_action :authorize, except: [:index, :show]

    def index
        @home = Home.all
    end
    
end