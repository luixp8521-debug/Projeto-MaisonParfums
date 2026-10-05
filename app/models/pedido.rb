class Pedido < ApplicationRecord
  belongs_to :usuario
  has_many :itens_pedidos, dependent: :destroy
  has_many :perfumes, through: :itens_pedidos

  enum status: {
    pendente: "pendente",
    pago: "pago",
    enviado: "enviado",
    entregue: "entregue",
    cancelado: "cancelado"
  }
end
