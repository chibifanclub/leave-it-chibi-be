class YelpFacade
  class << self
    def veterinarians(location)
      vets = YelpService.get_data(location).map do |data|
        Veterinarian.new(data)
      end
    end
  end
end