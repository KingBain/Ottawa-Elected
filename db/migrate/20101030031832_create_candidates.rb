class CreateCandidates < ActiveRecord::Migration
  def self.up
    create_table :candidates do |t|
      t.string :name
      t.string :ward
      t.string :website
      t.string :twitter
      t.string :youtube
      t.string :email
      t.string :facebook
      t.string :rss
      t.text :office
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :candidates
  end
end
