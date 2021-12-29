class CreateGeralVeiculoPessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :geral_veiculo_pessoas do |t|
      t.integer :veiculo_id
      t.integer :pessoa_id

      t.timestamps
    end
  end
end
