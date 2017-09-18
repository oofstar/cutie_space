class AddUserToCuties < ActiveRecord::Migration[5.1]
  def change
    add_column :cuties, :user_id, :integer, null: false
  end
end
