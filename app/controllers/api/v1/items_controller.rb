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

  def create
    item = Item.create(item_params)
    item.image.attach(params[:image])
    if item
      render json: { response: 'Item created!' }, status: :created
    else
      render json: { response: 'Item not created' }, status: :bad_request
    end
  end

  def update
    item = Item.find(params[:id])
    if item
      item.image.attach(params[:image])
      render json: { response: 'Photo attached' }, status: :accepted
    else
      render json: { response: 'Item does not exist' }, status: :bad_request
    end
  end

  def show
    item = Item.find(params[:id])
    if item
      if item.search.nil?
        Search.create(item_id: item.id, count: 1)
      else
        item.increment
      end
      render json: ItemSerializer.new(item)
    else
      render json: { response: 'Not Found' }, status: :not_found
    end
  end

  def top_five
    items = Item.get_top_five
    if items.length > 0
      render json: ItemSerializer.new(items)
    else
      render json: { response: 'Top Five Not Found' }, status: :not_found
    end
  end

  private

  def item_params
    params.permit(:name, :description, :toxicity, :treatment, :image)
  end
end
