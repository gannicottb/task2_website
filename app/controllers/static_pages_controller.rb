class StaticPagesController < ApplicationController

  include StaticPagesHelper

  def home
      if user_signed_in?
        @favorites = current_user.favorites
      end
  end

  def help
  end

  def about
  end

  def account
  end



  def update_lists
    #Add the new ingredient to the session array, creating it if nonexistent.
    session[:ingredients] = Array.new if session[:ingredients].nil?
    #prevent duplications and blanks
    if !session[:ingredients].include?(params[:add]) && !params[:add].blank?
      session[:ingredients] << params[:add]
    end
    #get google results
    @results = search_for_recipes(session[:ingredients])
    respond_to do |format|
      format.html { redirect_to root_path}
      format.js
    end

  end

  def clear_ingredients
    session[:ingredients] = [] if !session[:ingredients].nil?
    respond_to do |format|
      format.html { redirect_to root_path}
      format.js
    end
  end

  def display_results
      #Gotta get those results first, right?
    if session[:ingredients].nil?
      flash[:notice]="No Ingredients in the Session"
    else
       @results = search_for_recipes(session[:ingredients])
    end

  end


end

