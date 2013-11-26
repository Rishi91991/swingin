class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.references :advertiser
      t.text  :img_url
      t.date :start_date
      t.date :end_date 
      t.timestamps
    end
  end
end
