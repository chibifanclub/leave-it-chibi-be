require 'rails_helper'

describe 'Items' do
  it 'can get all items with a search criteria' do
    onion = Item.create!(
      name: 'onions',
      description: 'onions are bad',
      toxicity: 4,
      treatment: 'go to the vet immediately',
      image: 'some_image.jpg'
    )
    shoe = Item.create!(
      name: 'shoe',
      description: 'shoes are bad',
      toxicity: 4,
      treatment: 'go to the vet immediately',
      image: 'some_image.jpg'
    )
    get '/api/v1/items', params: {
      name: 'o'
    }
    items = JSON.parse(response.body, symbolize_names: true)
    
    expect(response).to be_successful
    expect(items).to be_a(Hash)
    expect(items).to have_key(:data)
    expect(items[:data]).to be_an(Array)
    items[:data].each do |item|
      expect(item).to be_a(Hash)
      expect(item).to have_key(:id)
      expect(item[:id]).to be_a(String)
      expect(item).to have_key(:type)
      expect(item[:type]).to eq('item')
      expect(item).to have_key(:attributes)
      expect(item[:attributes]).to be_a(Hash)
      expect(item[:attributes]).to have_key(:name)
      expect(item[:attributes]).to have_key(:description)
      expect(item[:attributes]).to have_key(:toxicity)
      expect(item[:attributes]).to have_key(:treatment)
      expect(item[:attributes]).to have_key(:image)
    end
  end

  it 'can respond with Not Found' do
    get '/api/v1/items', params: {
      name: 'bubble gum'
    }
    items = JSON.parse(response.body, symbolize_names: true)
    
    expect(items).to be_a(Hash)
    expect(items).to have_key(:response)
    expect(items[:response]).to eq('Not Found')
  end

  it 'can respond with Enter item to search if criteria is blank' do
    get '/api/v1/items', params: {
      name: ''
    }
    items = JSON.parse(response.body, symbolize_names: true)
    
    expect(items).to be_a(Hash)
    expect(items).to have_key(:response)
    expect(items[:response]).to eq('Enter item to search')
  end

  # it 'can show an item' do
  #   onion = Item.create!(
  #     name: 'onions',
  #     description: 'onions are bad',
  #     toxicity: 4,
  #     treatment: 'go to the vet immediately',
  #     image: 'some_image.jpg'
  #   )
  #   get "/api/v1/items/#{onion.id}"
  #   item = JSON.parse(response.body, symbolize_names: true)

  #   expect(response).to be_successful
  #   expect(item).to be_a(Hash)
  #   expect(item).to have_key(:data)
  #   expect(item[:data]).to have_key(:id)
  #   expect(item[:data]).to have_key(:type)
  #   expect(item[:data][:type]).to eq('item')
  #   expect(item[:data]).to have_key(:attributes)
  #   expect(item[:data][:attributes]).to have_key(:name)
  #   expect(item[:data][:attributes]).to have_key(:description)
  #   expect(item[:data][:attributes]).to have_key(:toxicity)
  #   expect(item[:data][:attributes]).to have_key(:treatment)
  #   expect(item[:data][:attributes]).to have_key(:image)
  # end

  it 'can get top five items' do
    onion = Item.create!(
      name: 'onions',
      description: 'onions are bad',
      toxicity: 4,
      treatment: 'go to the vet immediately',
      image: 'some_image.jpg'
    )
    shoe = Item.create!(
      name: 'shoes',
      description: 'shoess are bad',
      toxicity: 4,
      treatment: 'go to the vet immediately',
      image: 'some_image.jpg'
    )
    garlic = Item.create!(
      name: 'garlic',
      description: 'garlic are bad',
      toxicity: 4,
      treatment: 'go to the vet immediately',
      image: 'some_image.jpg'
    )
    plastic = Item.create!(
      name: 'plastics',
      description: 'plastics are bad',
      toxicity: 4,
      treatment: 'go to the vet immediately',
      image: 'some_image.jpg'
    )
    chocolate = Item.create!(
      name: 'chocolates',
      description: 'chocolates are bad',
      toxicity: 4,
      treatment: 'go to the vet immediately',
      image: 'some_image.jpg'
    )
    Search.create!(item_id: onion.id, count: 10)
    Search.create!(item_id: chocolate.id, count: 20)
    Search.create!(item_id: shoe.id, count: 1)
    Search.create!(item_id: plastic.id, count: 4)
    Search.create!(item_id: garlic.id, count: 5)
    get '/api/v1/top_five'
    top = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(top).to be_a(Hash)
    expect(top).to have_key(:data)
    expect(top[:data]).to be_an(Array)
    expect(top[:data].size).to eq(5)
    top[:data].each do |item|
      expect(item).to have_key(:id)
      expect(item).to have_key(:type)
      expect(item[:type]).to eq('item')
      expect(item).to have_key(:attributes)
      expect(item[:attributes]).to have_key(:name)
      expect(item[:attributes]).to have_key(:description)
      expect(item[:attributes]).to have_key(:toxicity)
      expect(item[:attributes]).to have_key(:treatment)
      expect(item[:attributes]).to have_key(:image)
    end
  end
end