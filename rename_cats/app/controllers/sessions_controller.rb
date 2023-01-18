class SessionsController < ApplicationController
    before_action :require_logged_out, only: [:new, :create]

    def new
        render :new
    end

    def create
#        debugger
        @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
        if @user
            login!(@user)
            redirect_to cats_url
        else
            render json: ["Invalid Credentials"]
        end
    end

    def destroy
        logout!
        redirect_to new_sessions_url
    end
end
