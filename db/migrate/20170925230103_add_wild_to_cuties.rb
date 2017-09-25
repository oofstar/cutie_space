class AddWildToCuties < ActiveRecord::Migration[5.1]
  def change
    add_column :cuties, :wild, :boolean, default: false
  end
end
