class CreatePawsUps < ActiveRecord::Migration[6.1]
  def change
    create_table :paws_ups do |t|
      t.references :user
      t.references :from_user

      t.text :description

      t.timestamps
    end
  end
end
