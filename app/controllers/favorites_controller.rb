class FavoritesController < ApplicationController
  # GET /favorites
  # GET /favorites.json
  before_filter :authenticate_user!
  respond_to :html, :xml

  def index
    @favorites = Favorite.all
    respond_with(@favorites)
  end

  # GET /favorites/1
  # GET /favorites/1.json
  def show
    @favorite = Favorite.find(params[:id])
    respond_with(@favorite)
  end

  # GET /favorites/new
  # GET /favorites/new.json
  def new
    @favorite = Favorite.new

    respond_with(@favorite)
  end

  # GET /favorites/1/edit
  def edit
    @favorite = Favorite.find(params[:id])
  end

  # POST /favorites
  # POST /favorites.json
  def create
    @favorite = current_user.favorites.build(params[:favorite])
    if @favorite.save
      flash[:notice] = "Favorite saved!"
    end
   # redirect_to root_path
    respond_with(@favorite)
  end

  # PUT /favorites/1
  # PUT /favorites/1.json
  def update
    @favorite = Favorite.find(params[:id])

    respond_to do |format|
      if @favorite.update_attributes(params[:favorite])
        format.html { redirect_to @favorite, notice: 'Favorite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorites/1
  # DELETE /favorites/1.json
  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy

    respond_to do |format|
      format.html { redirect_to favorites_url }
      format.json { head :no_content }
    end
  end
end
