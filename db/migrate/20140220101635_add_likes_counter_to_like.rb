class AddLikesCounterToLike < ActiveRecord::Migration
  def change
    add_column(:pictures, :likes_counter, :integer)
  end
end
