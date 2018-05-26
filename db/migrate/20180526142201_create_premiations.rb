class CreatePremiations < ActiveRecord::Migration[5.2]
  def change
    create_table :premiations do |t|
      t.references :badge, foreign_key: true
      t.references :citizen, foreign_key: true

      t.timestamps
    end
  end
end
