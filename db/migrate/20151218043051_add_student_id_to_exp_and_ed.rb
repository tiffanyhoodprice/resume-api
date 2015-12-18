class AddStudentIdToExpAndEd < ActiveRecord::Migration
  def change

    add_column :experiences, :student_id, :integer
    add_column :educations, :student_id, :integer

  end
end
