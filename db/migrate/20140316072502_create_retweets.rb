class CreateRetweets < ActiveRecord::Migration
  def change
    create_table :retweets do |t|
      t.string :tweet
    end
  end
end
