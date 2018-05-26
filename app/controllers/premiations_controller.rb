class PremiationsController < ApplicationController
  before_action :set_premiation, only: [:show, :edit, :update, :destroy]

  # GET /premiations
  # GET /premiations.json
  def index
    @premiations = Premiation.all
  end

  # GET /premiations/1
  # GET /premiations/1.json
  def show
  end

  # GET /premiations/new
  def new
    @premiation = Premiation.new
  end

  # GET /premiations/1/edit
  def edit
  end

  # POST /premiations
  # POST /premiations.json
  def create
    @premiation = Premiation.new(premiation_params)

    respond_to do |format|
      if @premiation.save
        format.html { redirect_to @premiation, notice: 'Premiation was successfully created.' }
        format.json { render :show, status: :created, location: @premiation }
      else
        format.html { render :new }
        format.json { render json: @premiation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /premiations/1
  # PATCH/PUT /premiations/1.json
  def update
    respond_to do |format|
      if @premiation.update(premiation_params)
        format.html { redirect_to @premiation, notice: 'Premiation was successfully updated.' }
        format.json { render :show, status: :ok, location: @premiation }
      else
        format.html { render :edit }
        format.json { render json: @premiation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /premiations/1
  # DELETE /premiations/1.json
  def destroy
    @premiation.destroy
    respond_to do |format|
      format.html { redirect_to premiations_url, notice: 'Premiation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_premiation
      @premiation = Premiation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def premiation_params
      params.require(:premiation).permit(:badge_id, :citizen_id)
    end
end
