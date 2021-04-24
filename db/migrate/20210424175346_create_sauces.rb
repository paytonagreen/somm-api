class CreateSauces < ActiveRecord::Migration[6.1]
  def change
    create_table :sauces do |t|
      t.string :sauce_name
      t.timestamps
    end
  end
end
