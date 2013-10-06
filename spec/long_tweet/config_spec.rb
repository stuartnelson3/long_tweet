require 'spec_helper'

describe LongTweet::Config do
  subject { LongTweet::Config }

  it 'takes an agent as its init argument' do
    expect { subject.new 'some agent' }.to_not raise_error
  end
end
