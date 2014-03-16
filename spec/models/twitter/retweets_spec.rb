require 'spec_helper'

describe Twitter::Retweets do
  let(:retweets) { Twitter::Retweets.new }
  it "should get the retweets" do
    retweets.perform.should == []
  end
end