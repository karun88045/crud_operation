class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.integer :account_number
      t.references :suplier, null: false, foreign_key: true 

      t.timestamps
    end
  end
end
 