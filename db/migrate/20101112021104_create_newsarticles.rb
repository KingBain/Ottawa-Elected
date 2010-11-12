class CreateNewsarticles < ActiveRecord::Migration
  def self.up
    create_table :newsarticles do |t|
      t.string :title
      t.string :source
      t.datetime :pubdate
      t.text :gnews_url
      t.string :url
      t.text :rejection
      t.string :moderation, :default => 'new'
      t.timestamps
    end
  end

  def self.down
    drop_table :newsarticles
  end
end
