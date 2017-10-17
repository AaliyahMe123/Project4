class CreateUsers < ApplicationRecord::Migration
  def change
    create table :users do |t|
      t.string :username
      t.string :email
      t.string :encrypted_password
      t.string :salt
      t.timestamps
    end
  end 
end
