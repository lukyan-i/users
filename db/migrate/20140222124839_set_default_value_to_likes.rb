class SetDefaultValueToLikes < ActiveRecord::Migration
  def change
    change_column :likes, :like, :boolean, :default => false
  end
end
