class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.datetime :sign_in
      t.datetime :sign_out
      t.string :navigation
      t.timestamps
    end
  end
end
