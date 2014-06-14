class CreateRetweets < ActiveRecord::Migration
  def change
    create_table :retweets do |t|
      t.string :tweet
      t.timestamps
    end
  end
end
