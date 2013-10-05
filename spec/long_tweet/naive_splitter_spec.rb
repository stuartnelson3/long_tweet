require 'spec_helper'

describe LongTweet::NaiveSplitter do
  subject { LongTweet::NaiveSplitter }
  let(:text) { 'a'*140*2 }

  it 'should create a tweet for every 140 characters' do
    tweets = subject.new(text).split
    expect(tweets.first.length).to eq 140
  end

  it 'should have the right length for the last tweet' do
    tweets = subject.new(text + 'a'*20).split
    expect(tweets.last.length).to eq 20
  end
end
