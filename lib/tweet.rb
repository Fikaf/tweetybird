require 'twitter'

module Tweet
  class << self
    def client
      Twitter::REST::Client.new do |config|
        config.consumer_key    = "8pLU97lIeRGEKRBT8X1Sdss6K"
        config.consumer_secret = "sL5T41uQXzyDfYxwhJZuHwZLwzBOUOOryfA57dhsArrd86PcsO"
      end
    end

    def search(keywords, latitude, longitude)
      client.search(keywords, result_type: "recent").take(10)
    end

    def users(keywords)
    end
  end
end
