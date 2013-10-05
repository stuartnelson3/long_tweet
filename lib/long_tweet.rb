require "long_tweet/version"
require "long_tweet/splitter"
require "long_tweet/naive_splitter"
require "long_tweet/ideal_splitter"
require "long_tweet/tweet"
require "long_tweet/arranger"

module LongTweet
  class Master
    attr_reader :text, :tweets
    def initialize text
      @text = text
      create_ordered_tweets
    end

    def create_ordered_tweets
      tweets = Splitter.new(text).split
      @tweets = Arranger.new(tweets).order
    end

    def post
      tweets.each(&:post)
      puts "Sending Tweet: #{text}"
    end
  end
end
