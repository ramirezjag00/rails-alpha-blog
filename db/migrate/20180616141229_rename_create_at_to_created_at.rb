class RenameCreateAtToCreatedAt < ActiveRecord::Migration[5.2]
  def change
    rename_column :articles, :create_at, :created_at
  end
end
