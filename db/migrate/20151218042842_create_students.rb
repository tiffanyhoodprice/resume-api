class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :short_bio
      t.string :linkedin_url
      t.string :twitter_url
      t.string :blog_url
      t.string :online_resume
      t.string :github_url
      t.string :photo_url
      t.string :cap_name
      t.string :cap_desc
      t.string :cap_url
      t.string :cap_ss

      t.timestamps null: false
    end
  end
end
