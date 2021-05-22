class CreateProducersWines < ActiveRecord::Migration[6.1]
  def change
    create_table :producers_wines do |t|
      t.integer :producer_id
      t.integer :wine_id
      t.timestamps
    end
  end
end
