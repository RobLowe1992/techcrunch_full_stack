class DisruptsController < ApplicationController
  before_action :set_disrupt, only: [:show, :edit, :update, :destroy]

  # GET /disrupts
  # GET /disrupts.json
  def index
    @disrupts = Video.where(:channel => 'Disrupt NY 2017')
  end

  # GET /disrupts/1
  # GET /disrupts/1.json
  def show
  end

  # GET /disrupts/new
  def new
    @disrupt = Disrupt.new
  end

  # GET /disrupts/1/edit
  def edit
  end

  # POST /disrupts
  # POST /disrupts.json
  def create
    @disrupt = Disrupt.new(disrupt_params)

    respond_to do |format|
      if @disrupt.save
        format.html { redirect_to @disrupt, notice: 'Disrupt was successfully created.' }
        format.json { render :show, status: :created, location: @disrupt }
      else
        format.html { render :new }
        format.json { render json: @disrupt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disrupts/1
  # PATCH/PUT /disrupts/1.json
  def update
    respond_to do |format|
      if @disrupt.update(disrupt_params)
        format.html { redirect_to @disrupt, notice: 'Disrupt was successfully updated.' }
        format.json { render :show, status: :ok, location: @disrupt }
      else
        format.html { render :edit }
        format.json { render json: @disrupt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disrupts/1
  # DELETE /disrupts/1.json
  def destroy
    @disrupt.destroy
    respond_to do |format|
      format.html { redirect_to disrupts_url, notice: 'Disrupt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disrupt
      @disrupt = Disrupt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disrupt_params
      params.fetch(:disrupt, {})
    end
end
