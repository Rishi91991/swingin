class CreateAdvertisers < ActiveRecord::Migration
  def change
    create_table :advertisers do |t|
      t.text   :address
      t.string :city
      t.string :company
      t.string :email
      t.string :mobile_number
      t.string :phone_number
      t.integer :postal_code
      t.string :state
      t.string :website_url
      t.timestamps
    end
  end
end
