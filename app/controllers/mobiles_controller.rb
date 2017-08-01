class MobilesController < ApplicationController


  # GET /mobiles
  # GET /mobiles.json
  def index
    @email = Email.new
    @listings = JobListing.all
    @mobiles = Story.where(:category => 'mobile')
  end

  # GET /mobiles/1
  # GET /mobiles/1.json
  def show
    @mobile = Story.find(params[:id])
    @story = Story.find(params[:id])
  end

  # GET /mobiles/new
  def new
    @mobile = Story.new
    @mobile.category = 'mobile'
  end

  # GET /mobiles/1/edit
  def edit
    @mobile = Story.find(params[:id])
  end

  # POST /mobiles
  # POST /mobiles.json
  def create
    @mobile = Story.create(mobile_params)

    redirect_to mobile_path(@mobile)
  end

  # PATCH/PUT /mobiles/1
  # PATCH/PUT /mobiles/1.json
  def update
    @mobile = Story.find(params[:id])
    respond_to do |format|
      if @mobile.update(mobile_params)
        format.html { redirect_to mobile_path(@mobile), notice: 'Mobile was successfully updated.' }
        format.json { render :show, status: :ok, location: @mobile }
      else
        format.html { render :edit }
        format.json { render json: @mobile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mobiles/1
  # DELETE /mobiles/1.json
  def destroy
    @mobile = Story.find(params[:id])
    @mobile.destroy

    redirect_to mobiles_path
  end


    private
  def mobile_params
    params.require(:story).permit(:title, :author, :category, :body, :img, :description)
  end

    # Never trust parameters from the scary internet, only allow the white list through.
end
