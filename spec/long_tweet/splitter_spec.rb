require 'spec_helper'

describe LongTweet::Splitter do
  subject { LongTweet::Splitter.new text }
  let(:text) { 'a'*140*3 }

  it 'should know its tweet count' do
    expect(subject.tweet_count).to eq 3
  end
end
