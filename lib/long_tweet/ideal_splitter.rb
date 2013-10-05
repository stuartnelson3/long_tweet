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
