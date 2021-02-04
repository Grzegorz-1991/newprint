class SessionsController < ApplicationController
    def new

    end

    def create
        user = User.find_by(username: params[:session][:username].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:notice] = "Zalogowano pomyślnie"
            redirect_to root_path
        else
            flash.now[:alert] = "Nieprawidłowe hasło lub emial"
            render 'new'
        end

    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = "Wylogowano użytkownika"
        redirect_to root_path
    end

  end
  