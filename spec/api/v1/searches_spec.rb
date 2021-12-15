require 'rails_helper'

describe 'Searches' do
  it 'adds to item count when searched' do
    onion = Item.create!(
      name: 'onions',
      description: 'onions are bad',
      toxicity: 4,
      treatment: 'go to the vet immediately',
      image: 'some_image.jpg'
    )
    Search.create!(
      item_id: onion.id,
      count: 10
    )
    post '/api/v1/searches', params: {name: 'onions', item_id: onion.id}
    search = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(search).to be_a(Hash)
    expect(search).to have_key(:response)
    expect(search[:response]).to eq('Search count increased')

  end

  it 'creates a new search if an item has not been searched for yet' do
    wallpaper = Item.create!(
      name: 'wallpapers',
      description: 'they stink',
      toxicity: 2,
      treatment: 'go to a vet',
      image: 'some_wallpapers.jpg'
    )
    post '/api/v1/searches', params: {name: 'wallpapers', item_id: wallpaper.id}
    search = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(search).to be_a(Hash)
    expect(search).to have_key(:response)
    expect(search[:response]).to eq('Search created')
  end
end