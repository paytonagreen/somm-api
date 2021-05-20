class CreateGrapesWines < ActiveRecord::Migration[6.1]
  def change
    create_table :grapes_wines do |t|
      t.integer :grape_id
      t.integer :wine_id
      t.timestamps
    end
  end
end