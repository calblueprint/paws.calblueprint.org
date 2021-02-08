class AddCycleToPawsUp < ActiveRecord::Migration[6.1]
  def change
    add_reference :paws_ups, :cycle, index: true
    add_foreign_key :paws_ups, :cycles
  end
end
