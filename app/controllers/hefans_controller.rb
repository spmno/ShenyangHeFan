class HefansController < ApplicationController
  before_action :set_hefan, only: [:show, :edit, :update, :destroy]

  # GET /hefans
  # GET /hefans.json
  def index
    @hefans = Hefan.page(params[:page])
    @district = District.all
  end

  # GET /hefans/1
  # GET /hefans/1.json
  def show
  end

  # GET /hefans/new
  def new
    @hefan = Hefan.new
  end

  # GET /hefans/1/edit
  def edit
  end

  # POST /hefans
  # POST /hefans.json
  def create
    @hefan = Hefan.new(hefan_params)

    respond_to do |format|
      if @hefan.save
        format.html { redirect_to @hefan, notice: 'Hefan was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hefan }
      else
        format.html { render action: 'new' }
        format.json { render json: @hefan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hefans/1
  # PATCH/PUT /hefans/1.json
  def update
    respond_to do |format|
      if @hefan.update(hefan_params)
        format.html { redirect_to @hefan, notice: 'Hefan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hefan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hefans/1
  # DELETE /hefans/1.json
  def destroy
    @hefan.destroy
    respond_to do |format|
      format.html { redirect_to hefans_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hefan
      @hefan = Hefan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hefan_params
      params.require(:hefan).permit(:name, :description, :price, :photo, :restaurant_id)
    end
end
