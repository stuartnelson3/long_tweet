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

  it 'doesnt exceed 140 characters when creating a tweet' do
    splitter = LongTweet::IdealSplitter.new('a '*140)
    text = splitter.split.first.text
    expect(text.length < 141).to be_true
  end

  it 'returns a tweet when there are < 140 characeters' do
    result = LongTweet::IdealSplitter.new('derp').split
    expect(result.first.text).to eq('derp')
  end

  it 'returns a postable object' do
    expect(first_tweet).to respond_to :post
  end
end
