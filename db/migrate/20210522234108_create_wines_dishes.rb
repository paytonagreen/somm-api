class CreateWinesDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :wines_dishes do |t|

      t.timestamps
    end
  end
end
