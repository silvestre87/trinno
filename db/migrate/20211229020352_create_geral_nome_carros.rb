class CreateGeralNomeCarros < ActiveRecord::Migration[5.2]
  def change
    create_table :geral_nome_carros do |t|
      t.integer :marca_id
      t.string :name

      t.timestamps
    end
  end
end
