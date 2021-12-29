class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table 'geral.products' do |t|
      t.string :name
      t.text :description
      t.integer :status

      t.timestamps
    end
  end
end
