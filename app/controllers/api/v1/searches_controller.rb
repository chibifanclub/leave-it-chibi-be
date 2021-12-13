class Api::V1::SearchesController < ApplicationController
  def create
    search = Search.find_by(search_params)
    if search
      search.update(count: search.count += 1)
      render json: { response: 'Search count increased' }, status: :accepted
    else
      Search.create(item_id: search_params[:item_id], count: 1)
      render json: { response: 'Search created' }, status: :accepted
    end
  end

  private

  def search_params
    params.permit(:item_id)
  end
end
