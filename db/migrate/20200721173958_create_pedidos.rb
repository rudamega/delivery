class CreatePedidos < ActiveRecord::Migration[6.0]
  def change
    create_table :pedidos do |t|
      t.string :monto
      t.string :cobro
      t.string :recibido_por
      t.string :status
      t.references :vendedors, null: false, foreign_key: true
      t.references :cliente_finals, null: false, foreign_key: true

      t.timestamps
    end
  end
end
