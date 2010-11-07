class AddImageToCandidates < ActiveRecord::Migration
  def self.up
    add_column :candidates, :image, :string
  end

  def self.down
    remove_column :candidates, :image
  end
end
