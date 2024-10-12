class CreateVaccines < ActiveRecord::Migration[7.0]
  def change
    create_table :vaccines do |t|
      t.string :name
      t.integer :current_dose
      t.integer :total_dose

      t.timestamps
    end
  end
end
