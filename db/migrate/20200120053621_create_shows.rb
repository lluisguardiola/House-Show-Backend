class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.references :event, null: false, foreign_key: true
      t.references :performer, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
