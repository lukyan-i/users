class AddImegesToPicture < ActiveRecord::Migration
  def change
    add_column(:pictures, :picture_file_name, :string)
    add_column(:pictures, :picture_content_type, :string)
    add_column(:pictures, :picture_file_size, :integer)
  end
end
