class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  encrypts :telefone

  enum :role, {
     cliente: "cliente",
     admin: "admin"
    }
  validates :nome, presence: true
  validates :telefone, presence: true
end
