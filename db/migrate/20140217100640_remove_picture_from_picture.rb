class RemovePictureFromPicture < ActiveRecord::Migration
  def change
    remove_column :pictures, :picture_file_name, :string
    remove_column :pictures, :picture_content_type, :string
    remove_column :pictures, :picture_file_size, :integer
  end
end
