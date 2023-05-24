class RemovePhoneFromTests < ActiveRecord::Migration[7.0]
  def change
    remove_column :tests, :phone, :string
  end
end
