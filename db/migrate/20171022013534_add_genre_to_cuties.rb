class AddGenreToCuties < ActiveRecord::Migration[5.1]
  def change
    add_column :cuties, :favorite_genre, :string
    add_column :cuties, :location, :string
  end
end
