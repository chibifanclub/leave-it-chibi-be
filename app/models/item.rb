class Item < ApplicationRecord
  has_one :search
  has_one_attached :image

  def self.search_for(search_params)
    where("name ILIKE ?", "%#{search_params}%")
  end

  # def increment
  #   search.update(count: search.count += 1)
  # end

  def self.search_name(name)
    where(name: name)
  end

  def self.get_top_five
    joins(:search)
      .select('items.*')
      .order(count: :desc)
      .limit(5)
  end

  def image_url
    if image.attached?
      image.blob.service_url
    end
  end
  #
  # def image_url
  #   if self.image_url.attachment
  #     self.image_url.attachment.service_url
  #   end
  # end
end
