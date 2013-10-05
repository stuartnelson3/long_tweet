require 'spec_helper'

describe LongTweet::Tweet do
  subject { LongTweet::Tweet.new text }
  let(:text) { 'some tweet' }

  it 'should respond to text' do
    expect(subject).to respond_to :text
  end

  it 'should return its text' do
    expect(subject.text).to eq('some tweet')
  end

  it 'should receive the send message' do
    twitter = double 'twitter'
    twitter.should_receive(:update).with(text)
    LongTweet::Tweet.new(text, twitter).post
  end
end
