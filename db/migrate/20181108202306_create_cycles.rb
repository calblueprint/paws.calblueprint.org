class CreateCycles < ActiveRecord::Migration
  def change
    create_table :cycles do |t|

      t.timestamps null: false
    end
  end
end
