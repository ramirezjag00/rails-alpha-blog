class RenameUpdateAtToUpdatedAt < ActiveRecord::Migration[5.2]
  def change
    rename_column :articles, :update_at, :updated_at
  end
end
