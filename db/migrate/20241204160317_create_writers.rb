class CreateWriters < ActiveRecord::Migration[8.0]
  def change
    create_table :writers do |t|
      t.string :name

      t.timestamps
    end
  end
end
