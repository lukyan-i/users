class DropController < ActiveRecord::Migration
  def change
    drop_table(:controllers)
  end
end
