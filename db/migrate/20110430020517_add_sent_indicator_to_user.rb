class AddSentIndicatorToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :comments_sent, :boolean, :default => false
  end

  def self.down
    remove_column :users, :comments_sent
  end
end
