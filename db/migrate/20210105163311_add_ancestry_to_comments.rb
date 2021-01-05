class AddAncestryToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :ancestry, :string
    add_index :comments, :ancestry
  end
end