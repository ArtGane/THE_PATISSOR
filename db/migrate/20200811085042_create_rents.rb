class CreateRents < ActiveRecord::Migration[6.0]
  def change
    create_table :rents do |t|
      t.datetime :begin_date
      t.datetime :end_date
      t.references :user
      t.references :service

      t.timestamps
    end
  end
end
