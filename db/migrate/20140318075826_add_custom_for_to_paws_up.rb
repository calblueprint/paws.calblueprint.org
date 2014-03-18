class AddCustomForToPawsUp < ActiveRecord::Migration
  def change
    add_column :paws_ups, :custom_for, :string
  end
end
