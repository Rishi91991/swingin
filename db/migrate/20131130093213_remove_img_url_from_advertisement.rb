class RemoveImgUrlFromAdvertisement < ActiveRecord::Migration
  def up
    remove_column :advertisements, :img_url
  end

  def down
    add_column :advertisements, :img_url, :text
  end
end
