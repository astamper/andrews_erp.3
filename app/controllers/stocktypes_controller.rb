class StocktypesController < ApplicationController
  before_action :set_stocktype, only: [:show, :edit, :update, :destroy]

  # GET /stocktypes
  # GET /stocktypes.json
  def index
    @stocktypes = Stocktype.all
  end

  # GET /stocktypes/1
  # GET /stocktypes/1.json
  def show
  end

  # GET /stocktypes/new
  def new
    @stocktype = Stocktype.new
  end

  # GET /stocktypes/1/edit
  def edit
  end

  # POST /stocktypes
  # POST /stocktypes.json
  def create
    @stocktype = Stocktype.new(stocktype_params)

    respond_to do |format|
      if @stocktype.save
        format.html { redirect_to @stocktype, notice: 'Stocktype was successfully created.' }
        format.json { render :show, status: :created, location: @stocktype }
      else
        format.html { render :new }
        format.json { render json: @stocktype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stocktypes/1
  # PATCH/PUT /stocktypes/1.json
  def update
    respond_to do |format|
      if @stocktype.update(stocktype_params)
        format.html { redirect_to @stocktype, notice: 'Stocktype was successfully updated.' }
        format.json { render :show, status: :ok, location: @stocktype }
      else
        format.html { render :edit }
        format.json { render json: @stocktype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stocktypes/1
  # DELETE /stocktypes/1.json
  def destroy
    @stocktype.destroy
    respond_to do |format|
      format.html { redirect_to stocktypes_url, notice: 'Stocktype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stocktype
      @stocktype = Stocktype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stocktype_params
      params.require(:stocktype).permit(:name)
    end
end
