class WorkreportsController < ApplicationController
  load_and_authorize_resource
  def index
    @user = current_user
  end

  private

  def redirect_to_profile
    if user_signed_in?
      redirect_to profile_path(current_user)
    end


  end
end
