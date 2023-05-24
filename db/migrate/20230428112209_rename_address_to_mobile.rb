class RenameAddressToMobile < ActiveRecord::Migration[7.0]
  def change
    rename_column :tests, :address, :mobile
  end
end
