class AdicionarDeviseAUsuarios < ActiveRecord::Migration[8.1]
  def change
    add_column :usuarios, :encrypted_password, :string, null: false, default: ""
    add_column :usuarios, :reset_password_token, :string
    add_column :usuarios, :reset_password_sent_at, :datetime
    add_column :usuarios, :remember_created_at, :datetime

    remove_column :usuarios, :password_digest, :string

    change_column_default :usuarios, :role, from: nil, to: "cliente"

    add_index :usuarios, :email, unique: true
    add_index :usuarios, :reset_password_token, unique: true
  end
end
