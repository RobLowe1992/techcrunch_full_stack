class StartupsController < ApplicationController

  # GET /startups
  def index
    @email = Email.new
    @listings = JobListing.all
    @startups = Story.where(:category => 'startup')
  end

  # GET /startups/1
  def show
    @startup = Story.find(params[:id])
  end

  # GET /startups/new
  def new
    @startup = Story.new
    @startup.category = 'startup'
  end

  # GET /startups/1/edit
  def edit
  end

  # POST /startups
  # POST /startups.json
  def create
    @startup = Story.new(startup_params)
    @email = Email.create(email_params)

    redirect_to startups_path
  end

  # PATCH/PUT /startups/1
  # PATCH/PUT /startups/1.json
  def update
    respond_to do |format|
      if @startup.update(startup_params)
        format.html { redirect_to @startup, notice: 'Startup was successfully updated.' }
        format.json { render :show, status: :ok, location: @startup }
      else
        format.html { render :edit }
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /startups/1
  # DELETE /startups/1.json
  def destroy
    @startup.destroy
    respond_to do |format|
      format.html { redirect_to startups_url, notice: 'Startup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_startup
      @startup = Startup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def startup_params
      params.fetch(:startup, {})
    end

    def startups_params
      params.require(:social).permit(:title, :author, :category, :body, :img, :description)
    end
end
