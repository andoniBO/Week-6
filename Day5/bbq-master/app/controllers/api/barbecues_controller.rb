class Api::BarbecuesController < ApplicationController
  def show
    barbecues = Barbecue.find(params[:id])
    render json: barbecues
  end
end
