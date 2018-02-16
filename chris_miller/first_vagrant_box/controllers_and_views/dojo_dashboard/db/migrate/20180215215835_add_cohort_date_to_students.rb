class AddCohortDateToStudents < ActiveRecord::Migration
  def change
    add_column :students, :cohort_date, :date
  end
end
