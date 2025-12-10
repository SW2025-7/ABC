class AddEventDateToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :event_date, :date
  end
end
