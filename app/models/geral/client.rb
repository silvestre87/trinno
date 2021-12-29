class Geral::Client < ApplicationRecord
  belongs_to :user
  self.table_name = "geral.clients"
end
