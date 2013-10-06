require 'general_store'

module LongTweet
  class Config
    attr_reader :agent, :store
    def initialize agent
      @agent = agent
      @store = GeneralStore.read('~/.long_tweet')
    end

    def configure
      agent.configure do |config|
        config.consumer_key = store.consumer_key
        config.consumer_secret = store.consumer_secret
        config.oauth_token = store.oauth_token
        config.oauth_token_secret = store.oauth_token_secret
      end
    end
  end
end
