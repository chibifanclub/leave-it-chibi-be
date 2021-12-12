class Item < ApplicationRecord
  has_one :search

  def self.search_for(search_params)
    where("name ILIKE ?", "%#{search_params}%")
  end

  def increment
    search.update(count: search.count += 1)
  end

  def self.search_name(name)
    where(name: name)
  end

  def self.get_top_five
    joins(:search)
      .select('items.*')
      .order(count: :desc)
      .limit(5)
  end
end
