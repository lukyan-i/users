class CreateTableEvent < ActiveRecord::Migration
  def change
    create_table :events do |t|
        t.integer :user_id
        t.string :action_type
        t.text :data
        t.timestamps
    end
  end
end
