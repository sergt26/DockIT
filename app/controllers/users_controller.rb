class UsersController < ApplicationController

  def new
  end

  def index
    @users = Users.new
  end


end
