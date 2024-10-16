class CreateSubmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :submissions do |t|
      t.string :name
      t.string :contact
      t.references :animal, null: false, foreign_key: true
      t.string :message
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
