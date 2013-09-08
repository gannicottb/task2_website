class UsersController < ApplicationController
  #Let Rails know that we're using Devise for auth
  before_filter :authenticate_user!

  #From Daniel Kehoe's 'Rails3-Devise-Rspec-Cucumber' tutorial on github.com
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end
