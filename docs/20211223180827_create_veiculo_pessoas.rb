class CreateVeiculoPessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :veiculo_pessoas do |t|
      t.references :veiculo, foreign_key: true
      t.references :pessoa, foreign_key: true

      t.timestamps
    end
  end
end
