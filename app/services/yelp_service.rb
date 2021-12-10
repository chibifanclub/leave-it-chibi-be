class YelpService
  BASE_URL = 'https://api.yelp.com'

  def self.conn
    Faraday.new(BASE_URL) do |f|
      f.headers['Authorizaiton'] = ENV['YelpAPIKey']
    end
  end
end