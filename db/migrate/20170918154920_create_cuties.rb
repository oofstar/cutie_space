class CreateCuties < ActiveRecord::Migration[5.1]
  def change
    create_table :cuties do |t|
      t.string :name, null: false
      t.string :cutie_pic
      t.text :bio
      t.string :cutie_type
      t.string :species
      t.date :birthdate

      t.timestamps null: false

    end
  end
end
