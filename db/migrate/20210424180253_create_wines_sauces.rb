class CreateWinesSauces < ActiveRecord::Migration[6.1]
  def change
    create_table :wines_sauces do |t|
      t.integer :wine_id
      t.integer :sauce_id
      t.timestamps
    end
  end
end
