class CreateGeralVeiculos < ActiveRecord::Migration[5.2]
  def change
    create_table :geral_veiculos do |t|
      t.integer :name_carro_id
      t.integer :ano
      t.string :placa
      t.string :renavam

      t.timestamps
    end
  end
end
