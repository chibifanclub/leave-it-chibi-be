class Api::V1::SuggestionsController < ApplicationController
  def create
    if params[:name] && params[:name] != ""
      item = Item.search_name(params[:name].downcase.pluralize)
      if item.empty?
        suggestion = Suggestion.create(suggestion_params)
        if suggestion
          render json: { response: 'Thank you for your suggestion' }, status: :accepted
        end
      else
        render json: ItemSerializer.new(item), status: :already_reported
      end
    else
      render json: { response: 'Enter suggestion' }, status: :bad_request
    end
  end

  private

  def suggestion_params
    params.permit(:name, :description)
  end
end
