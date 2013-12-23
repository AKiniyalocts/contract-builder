class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :compName
      t.string :accountNum
      t.string :compPhone
      t.string :compFax
      t.string :compContact
      t.string :compPhone
      t.string :compEmail

      t.timestamps
    end
  end
end
