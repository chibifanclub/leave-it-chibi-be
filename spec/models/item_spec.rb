require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'relationships' do
    it { should have_one(:search) }
  end

  describe 'methods' do
    onion = Item.create!(
      name: 'onions',
      description: 'onions are bad',
      toxicity: 4,
      treatment: 'go to the vet immediately',
      image: 'some_image.jpg'
    )
    Search.create!(item_id: onion.id, count: 10)

    # it 'can increment count of searches' do
    #   onion.increment

    #   expect(onion.search.count).to eq(11)
    # end
  end
end
