class Api::V1::ItemsController < ApplicationController
  def show
    if Item.exists?(params[:name])
      item = Item.find(params[:name])
      render json: ItemSerializer.new(item)
    else
      render json: { response: 'Not Found' }, status: :not_found
    end
  end
end
