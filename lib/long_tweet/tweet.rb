require 'twitter'

module LongTweet
  class Tweet
    attr_reader :text, :agent

    def initialize text, agent = Twitter
      @text = text
      @agent = agent
    end

    def post
      agent.update(text)
    end
  end
end
