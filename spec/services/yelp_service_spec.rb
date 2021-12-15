require 'rails_helper'

describe YelpService do
  it 'gets veterinarian business data' do
    params = {location: 'Denver, CO'}
    response = YelpService.get_data(params[:location])

    expect(response).to be_an(Array)
    response.each do |vet|
      expect(vet).to be_a(Hash)
      expect(vet).to have_key(:name)
      expect(vet).to have_key(:review_count)
      expect(vet).to have_key(:rating)
      expect(vet).to have_key(:location)
      expect(vet[:location]).to have_key(:display_address)
      expect(vet[:location][:display_address]).to be_an(Array)
      vet[:location][:display_address].each do |address_identifier|
        expect(address_identifier).to be_a(String)
      end
      expect(vet).to have_key(:display_phone)
    end
  end
end