class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :compName
      t.string :accountNum
      t.string :compPhone
      t.string :compFax
      t.string :shipStr
      t.string :shipCity
      t.string :shipSt
      t.string :shipZip
      t.string :shipCounty
      t.string :shipTax
      t.string :billStr
      t.string :billCity
      t.string :billSt
      t.string :billZip
      t.string :billCounty
      t.string :billTax
      t.boolean :billShipChk

      t.timestamps
    end
  end
end
