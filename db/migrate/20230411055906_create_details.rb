class CreateDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :details do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
