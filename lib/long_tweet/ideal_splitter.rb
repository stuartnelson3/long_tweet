module LongTweet
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
        while (tweet.length + ary.first.length) < 140
          tweet << "#{ary.shift} "
          break if ary.empty?
        end
        a << Tweet.new(tweet.strip)
        tweet = ''
      end
      a
    end
  end
end
