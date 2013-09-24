class EstimatesController < ApplicationController
  def create
    @estimate = Estimate.new(params[:estimate])
    @estimate.guest_count = Guest.count
    render :action => :show
  end
end
