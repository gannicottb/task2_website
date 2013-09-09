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
    #@ingredients = Array.new if @ingredients.nil?
    #@ingredients << params[:q]
    session[:ingredients] = Array.new if session[:ingredients].nil?
    session[:ingredients] << params[:q]
    redirect_to root_path
  end

  def display_results

  end


end
