class CreateGuidanceFees < ActiveRecord::Migration[6.0]
  def change
    create_table :guidance_fees do |t|
      t.integer :guidance_fee_total,          null: false
      t.integer :transportation_expense_total,null: false
      t.integer :total,                       null: false
      t.references :student,                  null: false, foreign_key: true
      t.timestamps
    end
  end
end
