class RemoveIdFromCategory < ActiveRecord::Migration
  def change
    remove_column :categories, :id, :integer
  end
end
