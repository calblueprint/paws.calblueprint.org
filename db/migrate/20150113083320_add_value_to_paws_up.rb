class AddValueToPawsUp < ActiveRecord::Migration[6.1]
  def change
    add_column :paws_ups, :value, :string
  end
end
