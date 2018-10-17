class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.where(role: current_user.role).order("id DESC")
    @search_users = @users.ransack params[:q]
    @results = @search_users.result
  end
end
