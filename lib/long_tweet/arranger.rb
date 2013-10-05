module LongTweet
  class Arranger
    attr_reader :tweets
    def initialize tweets
      @tweets = tweets
    end

    def arrange
      tweets.reverse
    end
  end
end
