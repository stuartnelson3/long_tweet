require 'spec_helper'

describe LongTweet::IdealSplitter do
  subject { LongTweet::IdealSplitter.new words }
  let(:lorem) { %w{lorenm ipsummm dolor sit ament} }
  let(:words) { (lorem*8).join(' ') }
  let(:first_tweet) { subject.split.first }

  it 'only have full words in tweets' do
    last_word = first_tweet.text.split.last
    expect(lorem.include? last_word).to be_true
  end

  it 'returns a postable object' do
    expect(first_tweet).to respond_to :post
  end
end
