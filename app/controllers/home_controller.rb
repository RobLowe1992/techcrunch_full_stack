class HomeController < ApplicationController

  def index
    @stories = Story.all
    @video = Video.last
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy

    redirect_to stories_path
  end

end
