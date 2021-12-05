class AddColumnUuid < ActiveRecord::Migration[6.1]
  def change
    add_column :pit_documents, :uuid, :string
  end
end
