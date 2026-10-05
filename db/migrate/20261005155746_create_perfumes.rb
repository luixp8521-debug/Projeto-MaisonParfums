class CreatePerfumes < ActiveRecord::Migration[8.1]
  def change
    create_table :perfumes do |t|
      t.string :model
      t.string :nome
      t.string :marca
      t.string :descricao
      t.string :categoria
      t.decimal :preco
      t.integer :estoque
      t.string :tipo

      t.timestamps
    end
  end
end
