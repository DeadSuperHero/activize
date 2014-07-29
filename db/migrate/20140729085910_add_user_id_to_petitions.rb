class AddUserIdToPetitions < ActiveRecord::Migration
  def change
    add_column :petitions, :user_id, :integer
    add_index :petitions, :user_id
  end
end
