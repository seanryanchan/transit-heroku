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

class TransitLinesController < ApplicationController
  before_action :set_transit_line, only: [:show, :edit, :update, :destroy]

  # GET /transit_lines
  # GET /transit_lines.json
  def index
    @transit_lines = TransitLine.all
  end

  # GET /transit_lines/1
  # GET /transit_lines/1.json
  def show
  end

  # GET /transit_lines/new
  def new
    @transit_line = TransitLine.new
  end

  # GET /transit_lines/1/edit
  def edit
  end

  # POST /transit_lines
  # POST /transit_lines.json
  def create
    @transit_line = TransitLine.new(transit_line_params)

    respond_to do |format|
      if @transit_line.save
        format.html { redirect_to @transit_line, notice: 'Transit line was successfully created.' }
        format.json { render :show, status: :created, location: @transit_line }
      else
        format.html { render :new }
        format.json { render json: @transit_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transit_lines/1
  # PATCH/PUT /transit_lines/1.json
  def update
    respond_to do |format|
      if @transit_line.update(transit_line_params)
        format.html { redirect_to @transit_line, notice: 'Transit line was successfully updated.' }
        format.json { render :show, status: :ok, location: @transit_line }
      else
        format.html { render :edit }
        format.json { render json: @transit_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transit_lines/1
  # DELETE /transit_lines/1.json
  def destroy
    @transit_line.destroy
    respond_to do |format|
      format.html { redirect_to transit_lines_url, notice: 'Transit line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transit_line
      @transit_line = TransitLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transit_line_params
      params.require(:transit_line).permit(:status, :operating_hours, :type, :restrictions, :reliability, :name, :avg_price)
    end
end
