module LongTweet
  class Splitter
    attr_reader :text
    def initialize text
      @text = text
      @splitter = set_splitter
    end

    def set_splitter
      if text.split.any? {|e| e.length > 140 }
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
end
