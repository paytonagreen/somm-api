class ChangeProteinName < ActiveRecord::Migration[6.1]
  def change
    rename_column :proteins, :protein_name, :name
  end
end
