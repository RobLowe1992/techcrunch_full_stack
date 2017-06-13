class HomeController < ApplicationController

  def index
    @stories = Story.all
    @email = Email.new
  end

  def create
    @email = Email.create(email_params)

    redirect_to root_path
  end

  private
  def email_params
    params.require(:email).permit(:email)
  end
end
