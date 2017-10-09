class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.string :title, { null: false }
      t.text :body, { null: false, limit: 5000 }
      t.integer :author_id

      t.timestamps
    end
  end
end
