class StaticPagesController < ApplicationController

  def home

  end

  def help
  end

  def about
  end

  def account
  end

  def add_ingredient
    #Add the new ingredient to the session array, creating it if nonexistent.
    session[:ingredients] = Array.new if session[:ingredients].nil?
    session[:ingredients] << params[:q]
    #Then redirect_to root_path.
    redirect_to root_path
    #I would prefer that this be done with AJAX.
  end

  def display_results

  end


end
