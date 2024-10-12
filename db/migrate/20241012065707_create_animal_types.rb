class CreateAnimalTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :animal_types do |t|
      t.string :name
      t.string :icon, null: false

      t.timestamps
    end
  end
end
