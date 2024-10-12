class CreateSocials < ActiveRecord::Migration[7.0]
  def change
    create_table :socials do |t|
      t.references :social_types, null: false, foreign_key: true
      t.string :url

      t.timestamps
    end
  end
end
