class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def create
    Guest.create(guest_params)
    redirect_to guests_url
  end

  private

  def guest_params
    params.require(:guest).permit(:email)
  end
end
