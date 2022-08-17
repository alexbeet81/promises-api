class CreatePromiseLists < ActiveRecord::Migration[7.0]
  def change
    create_table :promise_lists do |t|
      t.string :title
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.integer :recipient_id

      t.timestamps
    end
  end
end
