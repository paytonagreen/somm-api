class CreateAccountsGrapes < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts_grapes do |t|
      t.integer :account_id
      t.integer :grape_id
      t.timestamps
    end
  end
end
