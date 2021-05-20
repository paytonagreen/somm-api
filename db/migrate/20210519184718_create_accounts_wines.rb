class CreateAccountsWines < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts_wines do |t|
      t.integer :account_id
      t.integer :wine_id

      t.timestamps
    end
  end
end
