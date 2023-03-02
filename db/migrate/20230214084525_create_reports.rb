class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.integer :month_id,                     null: false
      t.integer :day_id,                       null: false
      t.decimal :hour, precision: 2, scale: 1, null: false
      t.integer :transportation_expense,       null: false
      t.text :content,                         null: false
      t.references :student,                   null: false, foreign_key: true
      t.timestamps
    end
  end
end
