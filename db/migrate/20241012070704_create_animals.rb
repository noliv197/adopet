class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.integer :age_unit
      t.references :animal_type, null: false, foreign_key: true
      t.integer :status
      t.integer :size
      t.string :about
      t.references :vaccine, null: false, foreign_key: true
      t.string :medication

      t.timestamps
    end
  end
end
