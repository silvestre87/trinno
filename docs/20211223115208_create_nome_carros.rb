class CreateNomeCarros < ActiveRecord::Migration[5.2]
  def change
    create_table :nome_carros do |t|
      t.string :name
      t.references :marca

      t.timestamps
    end
  end
end
