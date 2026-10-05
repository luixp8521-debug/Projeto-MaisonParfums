class CreatePedidos < ActiveRecord::Migration[8.1]
  def change
    create_table :pedidos do |t|
      t.references :usuario, null: false, foreign_key: true
      t.decimal :valor_total
      t.string :status

      t.timestamps
    end
  end
end
