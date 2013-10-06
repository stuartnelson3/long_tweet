require 'spec_helper'

describe LongTweet::Master do
  let(:text) { 'some sample text to tweet' }

  it 'should accept text and an agent' do
    LongTweet::Master.new(text, 'some agent')
  end
end
