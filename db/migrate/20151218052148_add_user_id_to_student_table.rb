class AddUserIdToStudentTable < ActiveRecord::Migration
  def change
    add_column :students, :user_id, :integer
  end
end
