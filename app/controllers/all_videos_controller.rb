class AllVideosController < ApplicationController
  before_action :set_all_video, only: [:show, :edit, :update, :destroy]

  # GET /all_videos
  # GET /all_videos.json
  def index
    @email = Email.new
    @listings = JobListing.all
    @all_videos = Video.all
  end

  # GET /all_videos/1
  # GET /all_videos/1.json
  def show
  end

  # GET /all_videos/new
  def new
    @video = Video.new
  end

  # GET /all_videos/1/edit
  def edit
  end

  # POST /all_videos
  # POST /all_videos.json
  def create
    @video = Video.create(all_video_params)

    redirect_to all_video_path(@video)
  end

  # PATCH/PUT /all_videos/1
  # PATCH/PUT /all_videos/1.json
  def update
    respond_to do |format|
      if @all_video.update(all_video_params)
        format.html { redirect_to @all_video, notice: 'All video was successfully updated.' }
        format.json { render :show, status: :ok, location: @all_video }
      else
        format.html { render :edit }
        format.json { render json: @all_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /all_videos/1
  # DELETE /all_videos/1.json
  def destroy
    @all_video.destroy
    respond_to do |format|
      format.html { redirect_to all_videos_url, notice: 'All video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_all_video
      @all_video = Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def all_video_params
      params.require(:video).permit(:link, :channel, :description, :img)
    end
end
