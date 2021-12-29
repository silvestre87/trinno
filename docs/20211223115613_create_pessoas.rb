class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.string :name
      t.string :cpf
      t.string :rg
      t.string :email
      t.string :telefone

      t.timestamps
    end
  end
end
