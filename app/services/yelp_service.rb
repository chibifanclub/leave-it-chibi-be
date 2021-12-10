class YelpService
  class << self
    def get_data(location)
      YelpClient.find_vets(location)[:businesses]
    end
  end
end