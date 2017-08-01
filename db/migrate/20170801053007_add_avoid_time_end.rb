class AddAvoidTimeEnd < ActiveRecord::Migration[5.1]
  def up
    add_column :tickets, :avoid_time_end, :time
  end

  def down
    remove_column :tickets, :avoid_time_end
  end
end
