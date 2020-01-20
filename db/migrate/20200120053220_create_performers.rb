class CreatePerformers < ActiveRecord::Migration[6.0]
  def change
    create_table :performers do |t|
      t.string :name

      t.timestamps
    end
  end
end
