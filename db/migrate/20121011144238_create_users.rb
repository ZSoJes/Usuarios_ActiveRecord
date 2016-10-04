# Este archivo debe contener una migración 
class CreateUsers < ActiveRecord::Migration
  def change
  # Agrega aquí las columnas que faltan
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string   :gender
      t.date :birthday
      t.string :email
      t.string :phone
      t.timestamps :created_at
      t.timestamps :updated_at
    end
  end
end