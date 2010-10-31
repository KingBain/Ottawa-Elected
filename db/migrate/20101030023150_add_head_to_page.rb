class AddHeadToPage < ActiveRecord::Migration
  def self.up
    add_column :pages, :head, :text
  end

  def self.down
    remove_column :pages, :head
  end
end
