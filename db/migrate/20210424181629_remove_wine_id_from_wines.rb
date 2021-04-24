class RemoveWineIdFromWines < ActiveRecord::Migration[6.1]
  def change
    remove_index :wines, :wine_id
    remove_column :wines, :wine_id, :string
  end
end
