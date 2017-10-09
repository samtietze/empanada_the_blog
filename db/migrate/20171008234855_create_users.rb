class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, { null: false, limit: 100 }
      t.string :username, { null: false, limit: 60 }
      t.string :email, { null: false }
      t.string :encrypted_password
    end
  end
end
