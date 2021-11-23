class CreatePitDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :pit_documents do |t|
      t.string :title
      t.string :image, null: false

      t.timestamps
    end
  end
end
