class RenameLike < ActiveRecord::Migration
  def change
    rename_column :likes, :like, :picture_like
  end
end
