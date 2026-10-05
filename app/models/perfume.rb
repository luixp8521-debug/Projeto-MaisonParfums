class Perfume < ApplicationRecord
  has_many :itens_carrinho, dependent: :destroy
  has_many :pedidos, through: :itens_carrinho

  validates :nome, presence: true
  validates :preco, presence: true, numericality: { greater_than: 0 }

  enum :categoria, {
    feminino: 1,
    masculino: 2,
    unissex: 3
  }

  enum :tipo, {
    tamanho_2ml: 1,
    tamanho_5ml: 2,
    tamanho_10ml: 3,
    lacrado: 4
  }
end
