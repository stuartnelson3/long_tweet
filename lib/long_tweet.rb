require "long_tweet/version"

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

  class Splitter
    attr_reader :text, :tweet_count
    def initialize text
      @text = text
      set_tweet_count
    end

    def set_tweet_count
      @tweet_count = text.length/140
      @tweet_count += 1 if text.length.modulo(140) > 0
    end

    def split
      ary = text.split
      if ary.any? {|e| e.length > 140 }
        naive_split
      else
        normal_split
      end
    end

    def naive_split
      a = []
      i = 0
      tweet_count.times do
        a << text.slice(i*140,140)
        i += 1
      end
      a
    end

    def normal_split
      a = []
      ary = text.split
      tweet = ''
      while ary.length > 0
        while ary.length > 0 && (tweet.length + ary.shift.length) < 140
          tweet << " #{ary.shift}"
        end
        a << tweet
        tweet = ''
      end
      a
    end

  end
end
