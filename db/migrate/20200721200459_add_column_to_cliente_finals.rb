class AddColumnToClienteFinals < ActiveRecord::Migration[6.0]
  def change
    add_column :cliente_finals, :latitud, :string
    add_column :cliente_finals, :longitud, :string
  end
end
