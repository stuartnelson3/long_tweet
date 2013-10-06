require "long_tweet/version"
require "long_tweet/splitter"
require "long_tweet/naive_splitter"
require "long_tweet/ideal_splitter"
require "long_tweet/tweet"
require "long_tweet/arranger"
require "long_tweet/config"
require "long_tweet/setup"
require 'twitter'

module LongTweet
  class Master
    attr_reader :text, :tweets, :agent
    def initialize text, agent
      @text = text
      @agent = agent
      create_ordered_tweets
      configure_agent
    end

    def configure_agent
      Config.new(agent).configure
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
