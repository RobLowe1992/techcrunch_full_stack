class HomeController < ApplicationController

  def index
    @stories = Story.all
    @email = Email.new
    @video = Video.last
    @listings = JobListing.all
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy

    redirect_to stories_path
  end

end
