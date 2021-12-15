class Api::V1::ItemsController < ApplicationController
  def index
    if params[:name] && params[:name] != ""
      items = Item.search_for(params[:name])
      if items.length > 0
        render json: ItemSerializer.new(items)
      else
        render json: { response: 'Not Found' }, status: :not_found
      end
    else
      render json: { response: 'Enter item to search' }, status: :bad_request
    end
  end

  # def show
  #   item = Item.find(params[:id])
  #   if item.search.nil?
  #     Search.create(item_id: item.id, count: 1)
  #   else
  #     item.increment
  #   end
  #   render json: ItemSerializer.new(item)
  # end

  def top_five
    items = Item.get_top_five
    if items.length > 0
      render json: ItemSerializer.new(items)
    # else
    #   render json: { response: 'Top Five Not Found' }, status: :not_found
    end
  end
end
