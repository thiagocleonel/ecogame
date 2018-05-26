class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.references :citizen, foreign_key: true
      t.references :ecopoint, foreign_key: true
      t.references :material, foreign_key: true
      t.float :weight

      t.timestamps
    end
  end
end
