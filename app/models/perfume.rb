class Perfume < ApplicationRecord
  has_many :itens_carrinho, dependent: :destroy
  has_many :carrinhos, through: :itens_carrinho
  has_many :itens_pedidos, dependent: :destroy
  has_many :pedidos, through: :itens_pedidos

  validates :nome, presence: true
  validates :preco, presence: true, numericality: { greater_than: 0 }

  enum :categoria, {
    feminino: "feminino",
    masculino: "masculino",
    unissex: "unissex"
  }

  #criar um enum de fragacia

  enum :tipo, {
    tamanho_2ml: "tamanho_2ml",
    tamanho_5ml: "tamanho_5ml",
    tamanho_10ml: "tamanho_10ml",
    lacrado: "lacrado"
  }
end
