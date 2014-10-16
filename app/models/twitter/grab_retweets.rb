module Twitter
  class GrabRetweets
    attr_reader :retweet_ids, :client

    def initialize
      @client = Proxy.new.twitter_client
    end

    def perform
      get_retweet_ids
      save_retweets_to_database
    end

    def get_retweet_ids
      @retweet_ids ||= client.retweeted_by_me({:count => 2000})
    end

    def save_retweets_to_database
      @retweet_ids.each do |t|
        ::Retweet.create({tweet: t.full_text})
      end
    end
  end
end