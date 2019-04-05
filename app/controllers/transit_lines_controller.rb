  # License
  # This is a course requirement for CS 192 Software Engineering II under the supervision of Asst. Prof. Ma. Rowena C. Solamo
  # of the Department of Computer Science, College of Engineering, University of the Philippines, Diliman for the AY 2018-2019

  # Code History
  # 1.0 - 2/5/2019 - Menard Cruz - Initial File
  # 1.1 - 2/7/2019 - Michael Marrero - Edited Comments, Added Comment Block that gives detailed information on the software.
  # 2.0 - 3/4/2019 - Michael Marrero - Edited the index method to reflect search query results on transit lines
  # 3.0 - 3/20/2019 - Michael Marrero - Added the Advanced search options

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
    search
  end

  def search
    @transit_lines = TransitLine.all
    if (params[:search].present? or params[:kind].present? or params[:operating_hours].present? or params[:reliability].present? or params[:min_price].present? or params[:max_price].present?)
      @transit_lines = @transit_lines.where(["name LIKE ?", "%#{params[:search]}%"])
      @transit_lines = @transit_lines.where(["kind LIKE ?", "%#{params[:kind]}%"]) if params[:kind].present?

      #@transit_lines = @transit_lines.where(["#{:start_time.to_s.to_i} <= ?", "#{((DateTime.parse(params[:operating_hours])).strftime("%H%M"))}".to_i]) if params[:operating_hours].present?
      @transit_lines = @transit_lines.where(["reliability LIKE ?", "%#{params[:reliability]}%"]) if params[:reliability].present?
      @transit_lines = @transit_lines.where(["avg_price >= ?", params[:min_price].to_f]) if params[:min_price].present?
      @transit_lines = @transit_lines.where(["avg_price <= ?", params[:max_price].to_f]) if params[:max_price].present?
      (listOfLinesWithinHours = []
        for i in @transit_lines
          startTime = DateTime.parse(i.start_time)
          endTime = DateTime.parse(i.close_time)
          if( startTime <= DateTime.parse(params[:operating_hours]) && DateTime.parse(params[:operating_hours]) <= endTime || startTime == endTime)
          listOfLinesWithinHours.push(i)
          end
        end
      @transit_lines = listOfLinesWithinHours) if params[:operating_hours].present?

    else
      @transit_lines = TransitLine.all
    end

    render 'index'
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
      params.require(:transit_line).permit(:status, :operating_hours, :kind, :restrictions, :reliability, :name, :avg_price, :start_time, :close_time)
    end
end
