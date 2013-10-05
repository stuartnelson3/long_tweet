require 'spec_helper'

describe LongTweet::Master do
  let(:text) { 'some sample text to tweet' }

  it 'should accept text' do
    LongTweet::Master.new(text)
  end
end
