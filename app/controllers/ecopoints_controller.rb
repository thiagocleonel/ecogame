class EcopointsController < ApplicationController
  before_action :set_ecopoint, only: [:show, :edit, :update, :destroy]

  # GET /ecopoints
  # GET /ecopoints.json
  def index
    @ecopoints = Ecopoint.all
  end

  # GET /ecopoints/1
  # GET /ecopoints/1.json
  def show
  end

  # GET /ecopoints/new
  def new
    @ecopoint = Ecopoint.new
  end

  # GET /ecopoints/1/edit
  def edit
  end

  # POST /ecopoints
  # POST /ecopoints.json
  def create
    @ecopoint = Ecopoint.new(ecopoint_params)

    respond_to do |format|
      if @ecopoint.save
        format.html { redirect_to @ecopoint, notice: 'Ecopoint was successfully created.' }
        format.json { render :show, status: :created, location: @ecopoint }
      else
        format.html { render :new }
        format.json { render json: @ecopoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ecopoints/1
  # PATCH/PUT /ecopoints/1.json
  def update
    respond_to do |format|
      if @ecopoint.update(ecopoint_params)
        format.html { redirect_to @ecopoint, notice: 'Ecopoint was successfully updated.' }
        format.json { render :show, status: :ok, location: @ecopoint }
      else
        format.html { render :edit }
        format.json { render json: @ecopoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ecopoints/1
  # DELETE /ecopoints/1.json
  def destroy
    @ecopoint.destroy
    respond_to do |format|
      format.html { redirect_to ecopoints_url, notice: 'Ecopoint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ecopoint
      @ecopoint = Ecopoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ecopoint_params
      params.require(:ecopoint).permit(:user_id)
    end
end
