require 'rails_helper'

describe 'Veterinarians Request' do
  it 'gets a list of veterinarians for a location' do
    get '/api/v1/veterinarians?location=denver,co'
    vets = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(vets).to be_a(Hash)
    expect(vets).to have_key(:data)
    expect(vets[:data]).to be_an(Array)
    vets[:data].each do |vet|
      expect(vet).to have_key(:id)
      expect(vet[:id]).to eq(nil)
      expect(vet).to have_key(:type)
      expect(vet[:type]).to eq('veterinarian')
      expect(vet).to have_key(:attributes)
      expect(vet[:attributes]).to have_key(:name)
      expect(vet[:attributes][:name]).to be_a(String)
      expect(vet[:attributes]).to have_key(:address)
      expect(vet[:attributes][:address]).to be_a(String)
      expect(vet[:attributes]).to have_key(:phone)
      expect(vet[:attributes][:phone]).to be_a(String)
      expect(vet[:attributes]).to have_key(:reviews)
      expect(vet[:attributes][:reviews]).to be_an(Integer)
      expect(vet[:attributes]).to have_key(:rating)
      expect(vet[:attributes][:rating]).to be_a(Float)
      expect(vet[:attributes]).to have_key(:image)
      expect(vet[:attributes][:image]).to be_a(String)
    end
  end
end