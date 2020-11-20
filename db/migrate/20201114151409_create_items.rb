class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :user_id,               null: false, foreign_key: true
      t.string  :name,                  null: false
      t.text    :detail,                null: false
      t.integer :category_id,           null: false
      t.integer :status_id,             null: false
      t.integer :delivery_change_id,    null: false
      t.integer :prefecture_id,         null: false
      t.integer :ship_days_id,          null: false
      t.integer :price,                 null: false
      t.timestamps
    end
  end
end
