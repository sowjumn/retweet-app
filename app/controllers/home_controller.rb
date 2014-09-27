class HomeController < ApplicationController
  def index
    @retweets = Retweet.all
  end
end