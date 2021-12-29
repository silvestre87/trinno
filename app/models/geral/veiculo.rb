class Geral::Veiculo < ApplicationRecord
  validates :ano, :placa, :renavam, presence: true
  belongs_to :nome_carro
  belongs_to :pessoa
end
