class ChangePicture < ActiveRecord::Migration
  def change
    rename_column :categories, :id_category, :id
    drop_table :controllers
  end
end
