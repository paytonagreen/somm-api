class CreateAccountsDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts_dishes do |t|
      t.integer :account_id
      t.integer :dish_id
      t.timestamps
    end
  end
end
