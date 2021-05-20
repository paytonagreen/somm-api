class FixDescriptionName < ActiveRecord::Migration[6.1]
  def change
    rename_column :wines, :wine_description, :description
  end
end
