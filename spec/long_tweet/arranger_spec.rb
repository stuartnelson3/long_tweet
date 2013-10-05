require 'spec_helper'

describe LongTweet::Arranger do
  subject { LongTweet::Arranger }

  it 'inits with an array' do
    expect { subject.new [] }.to_not raise_error
  end

  context 'sorting tweets' do
    it 'sorts in reverse by default' do
      tweets = [1,2,3,4,5]
      expect(subject.new(tweets).arrange).to eq(tweets.reverse)
    end
  end
end
