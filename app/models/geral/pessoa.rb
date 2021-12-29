class Geral::Pessoa < ApplicationRecord
  validates :name, :cpf, :telefone, presence: true
  belongs_to :user
  has_many :veiculos
end
