class CreateVeiculos < ActiveRecord::Migration[5.2]
  def change
    create_table :veiculos do |t|
      t.references :nome_carro, foreign_key: true
      t.integer :ano
      t.string :placa
      t.string :renavam

      t.timestamps
    end
  end
end
