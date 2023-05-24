class CreateThirdModels < ActiveRecord::Migration[7.0]
  def change
    create_table :third_models do |t|
      t.string :user_name

      t.timestamps
    end
  end
end
