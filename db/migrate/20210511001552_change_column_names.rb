class ChangeColumnNames < ActiveRecord::Migration[6.1]
  def change
    rename_column :sauces, :sauce_name, :name
    rename_column :wines, :wine_name, :name
  end
end
