class CreateItensCarrinhos < ActiveRecord::Migration[8.1]
  def change
    create_table :itens_carrinhos do |t|
      t.references :carrinho, null: false, foreign_key: true
      t.references :perfume, null: false, foreign_key: true
      t.integer :quantidade

      t.timestamps
    end
  end
end
