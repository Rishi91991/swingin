class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :coupon_code
      t.references :advertisement
      t.timestamps
    end
  end
end
