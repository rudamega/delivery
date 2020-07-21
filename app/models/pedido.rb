class Pedido < ApplicationRecord
  belongs_to :vendedors
  belongs_to :cliente_finals
end
