class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :value
      t.string :color
      t.boolean :discovered, default: false
      t.integer :position

      t.timestamps
    end
  end
end
