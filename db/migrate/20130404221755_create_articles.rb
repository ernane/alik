class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name, null: false
      t.text :content, null: false
      t.date :published_at
      t.integer :super_admin_id

      t.timestamps
    end
    add_index :articles, :super_admin_id
  end
end
