class HomeController < ApplicationController

  def index
    @stories = Story.all
    @email = Email.new
    @video = Video.last
    @listings = JobListing.all
  end

end
