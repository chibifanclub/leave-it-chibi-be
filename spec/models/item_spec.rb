require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'relationships' do
    it { should have_one(:search) }
  end
end
