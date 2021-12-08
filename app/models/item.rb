class Item < ApplicationRecord
  has_one :search

  def self.search_for(search_params)
    where("name ILIKE ?", "%#{search_params}%")
  end

  def increment
    search.update(count: search.count += 1)
  end
end
