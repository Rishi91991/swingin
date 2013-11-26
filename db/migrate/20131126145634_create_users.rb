class CreateUsers < ActiveRecord::Migration
  def change
  create_table :users do |t|
    t.string :email
    t.string :encrypted_password
    t.integer :age
    t.string :gender_type
    t.integer :resolution_height
    t.integer :resolution_width
    t.timestamps
    end
  end
end
