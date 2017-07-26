class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :email, :listings

    def email
        @email = Email.new
    end

    def listings
        @listings = JobListing.all
    end
end
