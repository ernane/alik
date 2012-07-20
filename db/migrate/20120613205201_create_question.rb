class CreateQuestion < ActiveRecord::Migration
  def up
    create_table :questions do |t|
      t.string  :title,                     :null => false
      t.text    :description,               :null => false
      t.string  :requester_name,            :null => false
      t.string  :requester_email,           :null => false
      t.integer :city_id
      t.string  :requester_phone,           :null => false, :limit => 14
      
      t.timestamps
    end
  end

  def down
    drop_table :questions
  end
end
