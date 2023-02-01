class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :student,         null: false
      t.integer :grade_id,       null: false
      t.integer :month_id,       null: false
      t.references :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
