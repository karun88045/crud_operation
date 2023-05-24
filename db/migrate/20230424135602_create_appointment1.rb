class CreateAppointment1 < ActiveRecord::Migration[7.0]
  def change
    create_table :appointment1s do |t|
      t.belongs_to :patient, index: true
      t.belongs_to :physician, index: true
      t.timestamps
    end
  end
end
