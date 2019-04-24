  # License
  # This is a course requirement for CS 192 Software Engineering II under the supervision of Asst. Prof. Ma. Rowena C. Solamo
  # of the Department of Computer Science, College of Engineering, University of the Philippines, Diliman for the AY 2018-2019

  # Code History
  # 1.0 - 2/5/2019 - Sean Chan - Initial File
  # 1.1 - 2/7/2019 - Michael Marrero - Edited Comments, Added Comment block for detailed information regarding the software.
  # 1.2 - 2/18/2019 - Michael Marrero - Added Edit Favorite Group Route Functions
  # 2.0 - 2/20/2019 - Michael Marrero - Edit Add/Delete Transit Lines from FRG

  # File Creation Date: 2/5/2019
  # Development Group: Transit Development Tteam (Chan,Cruz,Marrero)
  # Client Group: UP Student Dormers
  # Purpose of the Software: The project is to make a web-based application named Transit, and its main vision is to inform dormers and other temporary housed students to travel back to their
  #   permanent residence of the routes and methods from their current location. Being on a budget, students are more inclined to cheaper options in favor of comfort or travel time.

class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:show, :edit, :update, :destroy]

  # GET /favorites
  # GET /favorites.json
  def index
    @favorites = Favorite.all
  end

  # GET /favorites/1
  # GET /favorites/1.json
  # Should show the Favorite New Group's information, along with the transit lines associated with it.
  def show
    @string = ""
    @flag = 0
    colorArray = FavoritesHelper::COLORSARRAY

    @favorite.transit_lines.each do |transit_line|
      transit_line.transit_stops.each do |transit_stop|
        if @flag == 1
         @string = @string + ','
        end
        @string = @string + "\"" + transit_stop.name + "\""
        @flag = 1
      end
    end
  end

  # GET /favorites/new
  # Creation of a new Favorite Route Group. Shows the list of commuters and within the database too.
  def new
    @favorite = Favorite.new
    # to be seen in new.html.erb
    @commuters = Commuter.all
  end

  # GET /favorites/1/edit
  # Editing a Favorite Route Group's Transit Lines that are associated with it, its name, and to whom the Favorite Route Group is deicated to.
  def edit
    @transit_lines = TransitLine.all
  end

  # POST /favorites
  # POST /favorites.json
  # Creation of a new Favorite Route Group
  def create
    if logged_in?
      @favorite = Favorite.new(favorite_params)
      @favorite.commuter_id = current_user.id
      @commuters = Commuter.all
      respond_to do |format|
        if @favorite.save
          format.html { redirect_to @favorite, notice: 'Favorite was successfully created.' }
          format.json { render :show, status: :created, location: @favorite }
        else
          format.html { render :new }
          format.json { render json: @favorite.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to root_path
    end
  end

  # PATCH/PUT /favorites/1
  # PATCH/PUT /favorites/1.json
  # Editing of the Favorite Route Groups' Name and to which commuter it is dedicated to.
  def update
    respond_to do |format|
      if @favorite.update(favorite_params)
        format.html { redirect_to @favorite, notice: 'Favorite was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorite }
      else
        format.html { render :edit }
        format.json { render json: @favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorites/1
  # DELETE /favorites/1.json
  # Deletion of a Favorite Route Group
  def destroy
    @favorite.destroy
    respond_to do |format|
      format.html { redirect_to favorites_url, notice: 'Favorite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # PATCH /favorites/1/add_favorite/1
  # Updates the Favorite Route Groups by Adding Transit Lines
  def addition
    @favorite = Favorite.find(params[:id])
    @transit_line = TransitLine.find(params[:add_id])
    @favorite.transit_lines.push(@transit_line)
    @transit_lines = TransitLine.all
    render( :edit, locals: {id: @favorite.id})
    # redirect_to @favorite
  end

  # PATCH /favorites/1/remove_favorite/1
  # Updates the Favorite Route Groups by Deleting Transit Lines
  def removal
    @favorite = Favorite.find(params[:id])
    @favorite.transit_lines.delete(params[:remove_id])
    @transit_lines = TransitLine.all
    render( :edit, locals: {id: @favorite.id})
    # redirect_to @favorite
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite
      @favorite = Favorite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_params
      params.require(:favorite).permit(:name, :commuter_id)
    end
end
