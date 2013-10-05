module LongTweet
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
end
