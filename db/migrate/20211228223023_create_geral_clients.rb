class CreateGeralClients < ActiveRecord::Migration[5.2]
  def change
    create_table 'geral.clients' do |t|
      t.string :name, null: false
      t.string :company_name
      t.string :document
      t.string :email
      t.string :phone
      t.integer :user_id
      t.text :notes
      t.integer :status

      t.timestamps
    end
  end
end
