class RenameColumnToPitDocuments < ActiveRecord::Migration[6.1]
  def change
    rename_column :pit_documents, :image, :pdf
  end
end
