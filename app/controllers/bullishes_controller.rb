class BullishesController < ApplicationController


  # GET /bullishes
  # GET /bullishes.json
  def index
    @bullishes = Video.where(:channel => 'Bullish')
  end

  # GET /bullishes/1
  # GET /bullishes/1.json
  def show
  end

  # GET /bullishes/new
  def new
    @bullish = Video.new
    @bullish.channel = 'Bullish'
  end

  # GET /bullishes/1/edit
  def edit
  end

  # POST /bullishes
  # POST /bullishes.json
  def create
    @bullish = Video.new(bullish_params)

  end

  # PATCH/PUT /bullishes/1
  # PATCH/PUT /bullishes/1.json
  def update
    respond_to do |format|
      if @bullish.update(bullish_params)
        format.html { redirect_to @bullish, notice: 'Bullish was successfully updated.' }
        format.json { render :show, status: :ok, location: @bullish }
      else
        format.html { render :edit }
        format.json { render json: @bullish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bullishes/1
  # DELETE /bullishes/1.json
  def destroy
    @bullish.destroy
    respond_to do |format|
      format.html { redirect_to bullishes_url, notice: 'Bullish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bullish
      @bullish = Bullish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bullish_params
      params.fetch(:bullish, {})
    end
end
