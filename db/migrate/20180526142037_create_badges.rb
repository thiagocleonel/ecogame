class CreateBadges < ActiveRecord::Migration[5.2]
  def change
    create_table :badges do |t|
      t.string :name
      t.integer :given_count

      t.timestamps
    end
  end
end
