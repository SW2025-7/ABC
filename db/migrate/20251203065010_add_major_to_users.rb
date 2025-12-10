class AddMajorToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :major, :string
  end
end
