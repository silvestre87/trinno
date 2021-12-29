class CreateGeralMarcas < ActiveRecord::Migration[5.2]
  def change
    create_table :geral_marcas do |t|
      t.string :name

      t.timestamps
    end
  end
end
