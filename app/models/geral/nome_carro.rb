class Geral::NomeCarro < ApplicationRecord
  validates :name, presence: true
  belongs_to :marca
  belongs_to :veiculo
end
