class ItemPedido < ApplicationRecord
  belongs_to :pedido
  belongs_to :perfume
  validates :quantidade, presence: true, numericality: { greater_than: 0 }
end
