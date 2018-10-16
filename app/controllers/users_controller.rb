class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    # @users = User.where(role: current_user.role).order("id DESC")
    @q = User.ransack params[:q]
    byebug
    @result = @q.result
    byebug
    # @users = @users.page(params[:page]).per 15
  end
end
