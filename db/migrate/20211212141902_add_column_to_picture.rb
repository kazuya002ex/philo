class AddColumnToPicture < ActiveRecord::Migration[6.1]
  def change
    add_column :pit_documents, :picture, :string
  end
end
