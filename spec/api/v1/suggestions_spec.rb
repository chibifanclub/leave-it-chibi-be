require 'rails_helper'

describe 'Sugesstions' do
  it 'can create suggestions for new items' do
    post '/api/v1/suggest', params: {
      name: 'shoes',
      description: 'shoes are bad'
    }
    item = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(item).to have_key(:response)
    expect(item[:response]).to eq('Thank you for your suggestion')
  end

  it 'retrieves data from an already suggested item' do
    Item.create!(
      name: 'onions',
      description: 'onions are bad',
      toxicity: 4,
      treatment: 'go to the vet immediately',
      image: 'some_image.jpg'
    )
    post '/api/v1/suggest', params: {
      name: 'onions',
      description: 'onions are really bad'
    }
    item = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(item).to be_a(Hash)
    expect(item).to have_key(:data)
    expect(item[:data]).to be_an(Array)
    expect(item[:data][0]).to have_key(:id)
    expect(item[:data][0][:id]).to be_a(String)
    expect(item[:data][0]).to have_key(:type)
    expect(item[:data][0][:type]).to eq('item')
    expect(item[:data][0]).to have_key(:attributes)
    expect(item[:data][0][:attributes]).to be_a(Hash)
    expect(item[:data][0][:attributes]).to have_key(:name)
    expect(item[:data][0][:attributes][:name]).to be_a(String)
    expect(item[:data][0][:attributes]).to have_key(:description)
    expect(item[:data][0][:attributes][:description]).to be_a(String)
    expect(item[:data][0][:attributes]).to have_key(:toxicity)
    expect(item[:data][0][:attributes][:toxicity]).to be_an(Integer)
    expect(item[:data][0][:attributes]).to have_key(:treatment)
    expect(item[:data][0][:attributes][:treatment]).to be_a(String)
    expect(item[:data][0][:attributes]).to have_key(:image)
    expect(item[:data][0][:attributes][:image]).to be_a(String)
  end

  it 'has error handling' do
    post '/api/v1/suggest', params: {
      name: '',
      description: 'no item'
    }
    item = JSON.parse(response.body, symbolize_names: true)

    expect(item).to be_a(Hash)
    expect(item).to have_key(:response)
    expect(item[:response]).to eq('Enter suggestion')
  end
end