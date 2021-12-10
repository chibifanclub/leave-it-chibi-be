class YelpClient
  BASE_URL = 'https://api.yelp.com'

  class << self
    def find_vets(location)
      response = conn.get('/v3/businesses/search') do |f|
        f.params['term'] = 'veterinarian'
        f.params['location'] = location
      end
      parse_data(response)
    end

    def conn
      Faraday.new(BASE_URL) do |f|
        f.headers['Authorization'] = "Bearer #{ENV['YelpAPIKey']}"
      end
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end