class AddEmailPasswordToAuthor < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :email, :string
    add_column :authors, :password_digest, :string
    add_column :authors, :admin, :boolean
  end
end
