class SessionsController < ApplicationController
    def create
        user = User.find_by(username: params[:username])
        session[:user_id]= user.id
        render json: user
    end

    def destroy
        # user = User.find_by(:user_id params[:user_id])
        # user.destroy
        session.delete :user_id
         head :no_content

    end
end
