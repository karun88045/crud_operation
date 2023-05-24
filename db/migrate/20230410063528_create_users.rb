class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|

      t.timestamps
      t.string "fname"
      t.string "lnane"
      t.string "email"
      t.string "address"
      t.string "phone
    end
  end
end
