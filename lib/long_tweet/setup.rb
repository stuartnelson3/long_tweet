require 'general_store'

module LongTweet
  class Setup
    def ask question
      puts question
      gets.strip
    end

    def run
      @consumer_key = ask 'What is your consumer key?'
      @consumer_secret = ask 'What is your consumer secret?'
      @oauth_token = ask 'What is your oauth token?'
      @oauth_token_secret = ask 'What is your oauth secret?'
      set_credentials
      puts 'All done!'
    end

    def set_credentials
      GeneralStore.create '~/.long_tweet' do |gs|
        gs.consumer_key = @consumer_key
        gs.consumer_secret = @consumer_secret
        gs.oauth_token = @oauth_token
        gs.oauth_token_secret = @oauth_token_secret
      end
    end
  end
end

