require 'rails_helper'

RSpec.describe Search, type: :model do
  describe 'relationships' do
    it { should belong_to(:item) }
  end
end
