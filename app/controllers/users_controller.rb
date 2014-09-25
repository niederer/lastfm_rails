class UsersController < ApplicationController
  def show
    params[:user] ||= 1
    @playcount = User.playcount(params[:user])
  end
end
