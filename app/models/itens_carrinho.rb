class ItensCarrinho < ApplicationRecord
  belongs_to :carrinho
  belongs_to :perfume
  validates :quantidade, presence: true, numericality: { greater_than: 0 }
end
