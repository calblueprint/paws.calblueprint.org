class AddValueToPawsUp < ActiveRecord::Migration
  def change
    add_column :paws_ups, :value, :string
  end
end
