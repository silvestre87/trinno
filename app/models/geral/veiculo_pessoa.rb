class Geral::VeiculoPessoa < ApplicationRecord
  belongs_to :veiculo
  belongs_to :pessoa
end
