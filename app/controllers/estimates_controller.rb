class EstimatesController < ApplicationController
  def create
    @estimate = Estimate.new(params[:estimate])
    render :action => :show
  end
end
