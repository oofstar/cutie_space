class AddWildToCuties < ActiveRecord::Migration[5.1]
  def change
    add_column :cuties, :wild, :integer, default: 0
  end
end
