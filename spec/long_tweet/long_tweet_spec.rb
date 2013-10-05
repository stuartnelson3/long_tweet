require 'spec_helper'

describe LongTweet::Tweet do
  let(:text) { 'some sample text to tweet' }

  it 'should accept text' do
    LongTweet::Tweet.new(text)
  end
end
