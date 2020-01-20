class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :neighborhood, null: false, foreign_key: true
      t.string :name
      t.string :address
      t.string :start_time
      t.integer :intereted_count

      t.timestamps
    end
  end
end
