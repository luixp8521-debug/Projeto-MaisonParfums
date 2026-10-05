class Usuario < ApplicationRecord
  has_secure_password
  has_one :carrinho, dependent: :destroy
  has_many :pedidos, dependent: :destroy

  validates :email, presence: true, uniqueness: true

  enum :role, {
      cliente: 1,
      admin: 2
  }
end
