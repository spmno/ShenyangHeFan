class DistrictHefansController < ApplicationController
  before_action :set_district_hefan, only: [:show, :edit, :update, :destroy]

  # GET /district_hefans
  # GET /district_hefans.json
  def index
    @district = District.find(params[:district_id])
    @hefans = @district.restaurants.hefans
  end

  # GET /district_hefans/1
  # GET /district_hefans/1.json
  def show
  end

  # GET /district_hefans/new
  def new
    @district_hefan = DistrictHefan.new
  end

  # GET /district_hefans/1/edit
  def edit
  end

  # POST /district_hefans
  # POST /district_hefans.json
  def create
    @district_hefan = DistrictHefan.new(district_hefan_params)

    respond_to do |format|
      if @district_hefan.save
        format.html { redirect_to @district_hefan, notice: 'District hefan was successfully created.' }
        format.json { render action: 'show', status: :created, location: @district_hefan }
      else
        format.html { render action: 'new' }
        format.json { render json: @district_hefan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /district_hefans/1
  # PATCH/PUT /district_hefans/1.json
  def update
    respond_to do |format|
      if @district_hefan.update(district_hefan_params)
        format.html { redirect_to @district_hefan, notice: 'District hefan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @district_hefan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /district_hefans/1
  # DELETE /district_hefans/1.json
  def destroy
    @district_hefan.destroy
    respond_to do |format|
      format.html { redirect_to district_hefans_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_district_hefan
      @district_hefan = DistrictHefan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def district_hefan_params
      params[:district_hefan]
    end
end
