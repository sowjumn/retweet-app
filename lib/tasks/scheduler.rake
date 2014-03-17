namespace :twitter do
  desc "Get all the retweets to date" 
  task :get_retweets => :environment do
    puts 'Started getting tweets'
    Twitter::GrabRetweets.new.perform
    puts 'Finished running the task'
  end
end