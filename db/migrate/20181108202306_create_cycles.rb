class CreateCycles < ActiveRecord::Migration[6.1]
  def change
    create_table :cycles do |t|

      t.timestamps null: false
    end
  end
end
