class WorkprofilesController < ApplicationController
  before_action :set_workprofile, only: %i[ show edit update destroy ]

  # GET /workprofiles or /workprofiles.json
  def index
    @workprofiles = Workprofile.all
  end

  # GET /workprofiles/1 or /workprofiles/1.json
  def show
  end

  # GET /workprofiles/new
  def new
    
    @workprofile = Workprofile.new
  end

  # GET /workprofiles/1/edit
  def edit
  end

  # POST /workprofiles or /workprofiles.json
  def create
    @workprofile = Workprofile.new(workprofile_params)

    respond_to do |format|
      if @workprofile.save
        format.html { redirect_to @workprofile, notice: "Workprofile was successfully created." }
        format.json { render :show, status: :created, location: @workprofile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @workprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workprofiles/1 or /workprofiles/1.json
  def update
    respond_to do |format|
      if @workprofile.update(workprofile_params)
        format.html { redirect_to @workprofile, notice: "Workprofile was successfully updated." }
        format.json { render :show, status: :ok, location: @workprofile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @workprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workprofiles/1 or /workprofiles/1.json
  def destroy
    @workprofile.destroy
    respond_to do |format|
      format.html { redirect_to workprofiles_url, notice: "Workprofile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workprofile
      @workprofile = Workprofile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def workprofile_params
      params.require(:workprofile).permit(:position_title, :position_name, :company, :industry, :experience_type, :location, :start_date, :end_date, :position_id)
    end

    
end
