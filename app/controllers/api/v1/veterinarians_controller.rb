class Api::V1::VeterinariansController < ApplicationController
  def index
    veterinarians = YelpFacade.veterinarians(params[:location])
    render json: VeterinarianSerializer.new(veterinarians)
  end
end