class CreateQuestion < ActiveRecord::Migration
  def up
    create_table :questions do |t|
      t.string  :title,                     :null => false
      t.text    :description,               :null => false
      t.string  :requester_name,            :null => false
      t.string  :requester_email,           :null => false
      t.integer :city_id,                   :null => false
      t.integer :state_id,                  :null => false
      t.string  :requester_phone,           :null => false, :limit => 14
      t.string  :hashed_code
      t.integer :answers_count,             :default => 0
      t.boolean :available,                 :default => true
      
      t.timestamps
    end
    add_index :questions, :city_id
    add_index :questions, :state_id
  end

  def down
    drop_table :questions
  end
end
