class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.integer :price_per_hour
      t.string :localisation
      t.references :user

      t.timestamps
    end
  end
end
