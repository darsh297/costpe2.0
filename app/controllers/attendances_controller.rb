class AttendancesController < ApplicationController
  load_and_authorize_resource
  include SimpleCalendar
  def index
    @user = current_user
  end
end
