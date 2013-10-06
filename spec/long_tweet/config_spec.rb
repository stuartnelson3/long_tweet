require 'spec_helper'

describe LongTweet::Config do
  subject { LongTweet::Config }

  describe '#configure' do
    it 'sends configure to the agent' do
      agent = double 'agent'
      agent.should_receive :configure
      subject.new(agent).configure
    end
  end
end
