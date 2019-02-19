  # License
  # This is a course requirement for CS 192 Software Engineering II under the supervision of Asst. Prof. Ma. Rowena C. Solamo
  # of the Department of Computer Science, College of Engineering, University of the Philippines, Diliman for the AY 2018-2019

  # Code History
  # 1.0 - 2/5/2019 - Menard Cruz - Initial File
  # 1.1 - 2/7/2019 - Michael Marrero - Edited Comments, Added Comment Block that gives detailed information on the software.

  # File Creation Date: 2/5/2019
  # Development Group: Transit Development Tteam (Chan,Cruz,Marrero)
  # Client Group: UP Student Dormers
  # Purpose of the Software: The project is to make a web-based application named Transit, and its main vision is to inform dormers and other temporary housed students to travel back to their 
  #   permanent residence of the routes and methods from their current location. Being on a budget, students are more inclined to cheaper options in favor of comfort or travel time.

class TransitStopsController < ApplicationController
  before_action :set_transit_stop, only: [:show, :edit, :update, :destroy]

  # GET /transit_stops
  # GET /transit_stops.json
  def index
    @transit_stops = TransitStop.all
  end

  # GET /transit_stops/1
  # GET /transit_stops/1.json
  def show
  end

  # GET /transit_stops/new
  def new
    @transit_stop = TransitStop.new
  end

  # GET /transit_stops/1/edit
  def edit
  end

  # POST /transit_stops
  # POST /transit_stops.json
  def create
    @transit_stop = TransitStop.new(transit_stop_params)

    respond_to do |format|
      if @transit_stop.save
        format.html { redirect_to @transit_stop, notice: 'Transit stop was successfully created.' }
        format.json { render :show, status: :created, location: @transit_stop }
      else
        format.html { render :new }
        format.json { render json: @transit_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transit_stops/1
  # PATCH/PUT /transit_stops/1.json
  def update
    respond_to do |format|
      if @transit_stop.update(transit_stop_params)
        format.html { redirect_to @transit_stop, notice: 'Transit stop was successfully updated.' }
        format.json { render :show, status: :ok, location: @transit_stop }
      else
        format.html { render :edit }
        format.json { render json: @transit_stop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transit_stops/1
  # DELETE /transit_stops/1.json
  def destroy
    @transit_stop.destroy
    respond_to do |format|
      format.html { redirect_to transit_stops_url, notice: 'Transit stop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transit_stop
      @transit_stop = TransitStop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transit_stop_params
      params.require(:transit_stop).permit(:name, :type, :status, :longitude, :latitude)
    end
end
