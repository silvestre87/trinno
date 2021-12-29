class CreateSchemaGeral < ActiveRecord::Migration[5.2]
  def change
    create_schema (:geral) unless schema_exists?('geral')
  end
end
