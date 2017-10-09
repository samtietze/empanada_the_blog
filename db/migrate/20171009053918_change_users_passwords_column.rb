class ChangeUsersPasswordsColumn < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.rename :encrypted_password, :password_digest
    end
  end
end
