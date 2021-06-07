class CreatePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :phones do |t|
      t.integer :customer_id
      t.string :phone_type
      t.string :purchase_date

      t.timestamps
    end
  end
end
