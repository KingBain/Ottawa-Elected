class FixColumnName < ActiveRecord::Migration
  def self.up
rename_column :posts, :Date, :date
  end

  def self.down
  end
end
