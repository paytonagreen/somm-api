class CreateSubregions < ActiveRecord::Migration[6.1]
  def change
    create_table :subregions do |t|
      t.string :name
      t.timestamps
    end
  end
end