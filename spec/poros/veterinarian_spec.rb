require 'rails_helper'

describe Veterinarian do
  it 'exists' do
    params = {location: 'Denver, CO'}
    vets = YelpFacade.veterinarians(params[:location])
  
    vets.each do |vet|
      expect(vet).to be_a(Veterinarian)
      expect(vet.id).to eq(nil)
      expect(vet.name).to be_a(String)
      expect(vet.address).to be_a(String)
      expect(vet.phone).to be_a(String)
      expect(vet.reviews).to be_an(Integer)
      expect(vet.rating).to be_an(Float)
      expect(vet.image).to be_a(String)
    end
  end
end