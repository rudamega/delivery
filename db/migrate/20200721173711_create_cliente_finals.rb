class CreateClienteFinals < ActiveRecord::Migration[6.0]
  def change
    create_table :cliente_finals do |t|
      t.string :name
      t.string :nro
      t.string :direccion
      t.string :email

      t.timestamps
    end
  end
end
