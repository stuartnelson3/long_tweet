require 'spec_helper'

describe LongTweet::Tweet do
  let(:text) { 'some sample text to tweet' }

  it 'should accept text' do
    LongTweet::Tweet.new(text)
  end
end

describe LongTweet::Splitter do
  subject { LongTweet::Splitter }
  let(:text) { 'a'*140*3 }

  it 'should know its tweet count' do
    expect(subject.new(text).tweet_count).to eq 3
  end
end

describe LongTweet::NaiveSplitter do
  subject { LongTweet::NaiveSplitter }
  let(:text) { 'a'*140 }

  it 'should create a tweet for every 140 characters' do
    tweets = subject.new(text).split
    expect(tweets.first.length).to eq 140
  end

  it 'should have the right length for the last tweet' do
    tweets = subject.new(text + 'a'*20).split
    expect(tweets.last.length).to eq 20
  end

end

describe LongTweet::IdealSplitter do
  subject { LongTweet::IdealSplitter }
  let(:lorem) { %w{lorenm ipsummm dolor sit ament} }
  let(:words) { (lorem*8).join(' ') }

  it 'should return tweet objects'

  it 'only have full words in tweets' do
    first_tweet = subject.new(words).split.first
    last_word = first_tweet.split.last
    expect(lorem.include? last_word).to be_true
  end
end
