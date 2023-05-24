class AddColumnAttrToTests < ActiveRecord::Migration[7.0]
  def change
    add_column :tests, :phone, :string
    add_column :tests, :address, :string
  end
end
