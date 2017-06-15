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
    @comment = Comment.new
  end

  # GET /mobiles/new
  def new
    @mobile = Story.new
    @mobile.category = 'mobile'
  end

  # GET /mobiles/1/edit
  def edit
  end

  # POST /mobiles
  # POST /mobiles.json
  def create
    @mobile = Story.create(mobile_params)

    redirect_to mobile_path(@mobile)
  end

  def create_comment
    @comment = Comment.create(mobile_comment_params)
  end

  # PATCH/PUT /mobiles/1
  # PATCH/PUT /mobiles/1.json
  def update
    @mobile = Story.find(:id)
  end

  # DELETE /mobiles/1
  # DELETE /mobiles/1.json
  def destroy
    @mobile.destroy
    respond_to do |format|
      format.html { redirect_to mobiles_url, notice: 'Mobile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


    private
  def mobile_params
    params.require(:story).permit(:title, :author, :category, :body, :img, :description)
  end
  def mobile_comment_params
    params.require(:comment).permit(:content)
  end

    # Never trust parameters from the scary internet, only allow the white list through.
end
