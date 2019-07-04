class SessionsController < ApplicationController
    def new
        render :new
    end

    def create
        user = User.find_by_credentials(params[:user][:email], params[:user][:password])

        if user
            reditect_to user_url(user.id)
        else
            flash[:errors] = 'This aint right'
            render :new
        end
    end

    def destroy
        sign_out
        redirect_to new_user_url
    end
end