class CreateRents < ActiveRecord::Migration[6.0]
  def change
    create_table :rents do |t|
      t.datetime :begin_date
      t.datetime :end_date
      t.references :user, foreign_key: :true
      t.references :service, foreign_key: :true

      t.timestamps
    end
  end
end
