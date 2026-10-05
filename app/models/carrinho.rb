class Carrinho < ApplicationRecord
  belongs_to :usuario
  has_many :itens_carrinhos, dependent: :destroy
end
