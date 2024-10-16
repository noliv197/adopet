class CreateSocials < ActiveRecord::Migration[7.0]
  def change
    create_table :socials do |t|
      t.references :social_type, null: false, foreign_key: true
      t.string :user
      t.string :url, null: true

      t.timestamps
    end
  end
end
