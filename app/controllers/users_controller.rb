class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @users = User.all
  end

  def add_user
    if params[:user].present?
      email = params[:user][:email]
      password = params[:user][:password]
      role_id = params[:user][:role_id]

      # Additional password constraints
      if password_valid?(password)
        a = User.new(email: email, password: password, role_id: role_id)

        if a.save
          redirect_to users_path
        else
          render 'add_user'
        end
      else
        flash[:alert] = 'Invalid password. Please follow the password constraints.'
        render 'add_user'
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role_id)
  end

  def password_valid?(password)
    minimum_length = 8
    has_uppercase = /[A-Z]/.match?(password)
    has_lowercase = /[a-z]/.match?(password)
    has_digit = /\d/.match?(password)
    has_special_character = /[^A-Za-z\d]/.match?(password)

    password.length >= minimum_length &&
      has_uppercase &&
      has_lowercase &&
      has_digit &&
      has_special_character
  end
end
