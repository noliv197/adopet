class CreateSponsors < ActiveRecord::Migration[7.0]
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :about
      t.string :url, null: true

      t.timestamps
    end
  end
end
