class RemoveLikesCounterFromPicture < ActiveRecord::Migration
  def change
    remove_column :pictures, :likes_counter, :integer
  end
end
