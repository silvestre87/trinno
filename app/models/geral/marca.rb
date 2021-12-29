class Geral::Marca < ApplicationRecord
  validates :name, presence: true
  has_many :name_carros, dependent: :destroy
end
