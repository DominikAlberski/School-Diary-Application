class AddBirthDateToStudents < ActiveRecord::Migration
  def change
    add_column :students, :birth_date, :date
  end
end
