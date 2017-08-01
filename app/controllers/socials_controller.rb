class SocialsController < ApplicationController


  # GET /socials
  # GET /socials.json
  def index
    @email = Email.new
    @listings = JobListing.all
    @socials = Story.where(:category => 'social')
  end

  # GET /socials/1
  # GET /socials/1.json
  def show
    @social = Story.find(params[:id])
  end

  # GET /socials/new
  def new
    @social = Story.new
    @social.category = 'social'
  end

  # GET /socials/1/edit
  def edit
    @social = Story.find(params[:id])
  end

  # POST /socials
  # POST /socials.json
  def create
    @social = Story.create(social_params)

    redirect_to social_path(@social)
  end

  # PATCH/PUT /socials/1
  # PATCH/PUT /socials/1.json
  def update
    @social = Story.find(params[:id])
    respond_to do |format|
      if @social.update(social_params)
        format.html { redirect_to social_path(@social), notice: 'Social was successfully updated.' }
        format.json { render :show, status: :ok, location: @social }
      else
        format.html { render :edit }
        format.json { render json: @social.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socials/1
  # DELETE /socials/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social
      @social = Story.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def social_params
      params.require(:story).permit(:title, :author, :category, :body, :img, :description)
    end
end
