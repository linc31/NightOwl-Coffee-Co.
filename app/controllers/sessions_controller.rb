class SessionsController < ApplicationController
    
    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: 'Dope!'
        else
            flash.now.alert = 'Ya messed up, try again!'
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: 'Peace out!'
    end
    
end