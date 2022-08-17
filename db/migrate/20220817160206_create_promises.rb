class CreatePromises < ActiveRecord::Migration[7.0]
  def change
    create_table :promises do |t|
      t.string :title
      t.boolean :is_claimed, default: :false
      t.text :description
      t.references :promise_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
