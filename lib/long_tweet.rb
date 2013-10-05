require "long_tweet/version"
require "long_tweet/splitter"
require "long_tweet/naive_splitter"
require "long_tweet/ideal_splitter"

module LongTweet
  class Tweet
    attr_reader :text
    def initialize text
      @text = text
    end

    def send
      "Sending Tweet: #{text}"
    end

  end

end
