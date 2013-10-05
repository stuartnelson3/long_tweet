require 'spec_helper'

describe LongTweet::IdealSplitter do
  subject { LongTweet::IdealSplitter.new words }
  let(:lorem) { %w{lorenm ipsummm dolor sit ament} }
  let(:words) { (lorem*8).join(' ') }

  it 'returns a sendable object' do
    expect(subject.split.first).to respond_to :send
  end

  it 'only have full words in tweets' do
    first_tweet = subject.split.first
    last_word = first_tweet.split.last
    expect(lorem.include? last_word).to be_true
  end
end
