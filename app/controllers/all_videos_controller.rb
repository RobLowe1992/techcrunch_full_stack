# This Controller should just be VideosController. Conceptually, "all videos" is
# really just index in a controller for videos.

# scaffolding generated a ton of extra unused code/files in your application

# Rather than having several controllers for videos, you should have a just videos controller.
# You can leverage Video's channel field/property (really it's an AR getter/setter method)
# to differentiate your videos

# To filter the list, honestly, I'd probably use javascript for this, hide and show videos
# based on a clickable list of categories, where each clickable category had a click-listener on it
# triggering a function that woulder filter based on the clicked category.
# Each Video displayed in your view could have a custom HTML attribute like `data-category`
# that you could use target the relevant elements 
# That's the leanest, DRY-est way I can think of, and wouldn't involve a page refresh

# You could also have multiple index view-methods such bullishes_index,
# crunch_reports_index, disrupts_index, though this would be repetitive
# and your views for each seem similar if not identical

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
    redirect_to all_videos_path
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
