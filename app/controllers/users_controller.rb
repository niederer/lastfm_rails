class UsersController < ApplicationController
  def show
    params[:user] ||= 1
    @playcount = User.playcount(params[:user])
    @full_name = User.full_name(params[:user])
    @username = User.username(params[:user])
    # @user = User.find(params[:user])
  end
end
