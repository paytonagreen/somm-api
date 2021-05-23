class AddColumnsToWinesDishes < ActiveRecord::Migration[6.1]
  def change
    add_column :wines_dishes, :wine_id, :integer
    add_column :wines_dishes, :dish_id, :integer
  end
end
