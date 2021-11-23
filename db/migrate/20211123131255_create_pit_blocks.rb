class CreatePitBlocks < ActiveRecord::Migration[6.1]
  def change
    create_table :pit_blocks do |t|
      t.references :pit_document, index: true, null: false, foreign_key: true
      t.float :width, null: false
      t.float :height, null: false
      t.float :side_coordinate, null: false
      t.float :vertical_coordinate, null: false

      t.timestamps
    end
  end
end
