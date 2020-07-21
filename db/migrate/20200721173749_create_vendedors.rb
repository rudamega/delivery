class CreateVendedors < ActiveRecord::Migration[6.0]
  def change
    create_table :vendedors do |t|
      t.string :name
      t.string :ruc
      t.string :nro
      t.string :status

      t.timestamps
    end
  end
end
