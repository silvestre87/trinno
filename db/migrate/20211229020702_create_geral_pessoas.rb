class CreateGeralPessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :geral_pessoas do |t|
      t.string :name
      t.string :cpf
      t.string :rg
      t.string :email
      t.string :telefone
      t.integer :user_id
      t.integer :status

      t.timestamps
    end
  end
end
