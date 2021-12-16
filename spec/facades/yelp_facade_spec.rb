require 'rails_helper'

describe YelpFacade do
  it 'creates a an array of veterinarian objects' do
    params = {location: 'Denver, CO'}
    vets = YelpFacade.veterinarians(params[:location])

    expect(vets).to be_an(Array)
    vets.each do |v|
      expect(v).to be_a(Veterinarian)
    end
  end
end