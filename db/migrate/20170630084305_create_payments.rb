class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.boolean :payment, default: false, null: false
      t.date :payment_date
      t.integer :student_id
      
      t.timestamps null: false
    end
    add_foreign_key :payments, :students
  end
end
