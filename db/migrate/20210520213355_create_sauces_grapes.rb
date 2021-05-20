class CreateSaucesGrapes < ActiveRecord::Migration[6.1]
  def change
    create_table :sauces_grapes do |t|
      t.integer :sauce_id
      t.integer :grape_id
      t.timestamps
    end
  end
end
