class AddVintageToWines < ActiveRecord::Migration[6.1]
  def change
    add_column :wines, :has_vintage, :boolean
    add_column :wines, :vintage, :integer
  end
end
