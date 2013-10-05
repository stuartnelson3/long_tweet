require "long_tweet/version"
require "long_tweet/splitter"
require "long_tweet/naive_splitter"
require "long_tweet/ideal_splitter"

module LongTweet
  class Tweet
    attr_reader :text, :tweets
    def initialize text
      @text = text
      @tweets = Splitter.new(text)
    end

    def send
      tweets.each(&:send)
      puts "Sending Tweet: #{text}"
    end
  end
end
