class Veterinarian
  attr_reader :id, :name, :address, :phone, :reviews, :rating, :image

  def initialize(data)
    @id = nil
    @name = data[:name]
    @address = data[:location][:display_address].join(', ')
    @phone = data[:display_phone]
    @reviews = data[:review_count]
    @rating = data[:rating]
    @image = data[:image_url]
  end
end