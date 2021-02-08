class AddCustomForToPawsUp < ActiveRecord::Migration[6.1]
  def change
    add_column :paws_ups, :custom_for, :string
  end
end
