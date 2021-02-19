class CreateNationalParks < ActiveRecord::Migration[6.0]
  def change
    create_table :national_parks do |t|
      t.string :name
      t.integer :established
      t.string :description
      t.string :nearest_city
      t.string :image_url
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
