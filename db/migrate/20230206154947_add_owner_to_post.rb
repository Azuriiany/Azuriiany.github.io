class AddOwnerToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :owner, :string
  end
end
