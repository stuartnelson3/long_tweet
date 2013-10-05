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
    attr_reader :text
    def initialize text
      @text = text
      @splitter = set_splitter
    end

    def set_splitter
      ary = text.split
      if ary.any? {|e| e.length > 140 }
        NaiveSplitter.new text
      else
        IdealSplitter.new text
      end
    end

    def tweet_count
      tweet_count = text.length/140
      tweet_count += 1 if text.length.modulo(140) > 0
      tweet_count
    end

    def split
      @splitter.split
    end

  end

  class NaiveSplitter < Splitter
    attr_reader :text
    def initialize text
      @text = text
    end

    def split
      a = []
      i = 0
      tweet_count.times do
        a << text.slice(i*140,140)
        i += 1
      end
      a
    end
  end

  class IdealSplitter < Splitter
    attr_reader :text
    def initialize text
      @text = text
    end

    def split
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
