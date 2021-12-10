class UsersController < ApplicationController
    def login
        login_params  = login_form_params
        if !login_params.empty?
            result = User.where(email: login_params[:email], password: login_params[:password])
            if result.exists?
                session[:user_id] = result.first.id
                redirect_to '/'
            else
                flash[:danger] = "Invalid credentials"
            end
        end
    end

    def signup
        byebug
        signup_params = signup_form_params
        if !signup_params.empty?
            if !User.where(email: signup_params[:email]).exists?
                user = User.new(signup_params)
                if user.valid?
                    user.save
                    session[:user_id] = user.id
                    redirect_to '/'
                else
                    flash[:danger] = user.errors.full_messages  
                end
            else
                flash[:danger] = "User with the given email already exists"
                redirect_to '/signup'
            end
        end
    end

    private
    def login_form_params
        params.permit(:email, :password)
    end

    def signup_form_params
        params.permit(:first_name, :last_name, :email, :password)
    end
end
