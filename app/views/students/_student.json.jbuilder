json.id             student.id
json.first_name     student.first_name
json.last_name      student.last_name
json.email          student.email
json.phone          student.phone
json.bio            student.short_bio
json.linked_in      student.linkedin_url
json.twitter        student.twitter_url
json.blog           student.blog_url
json.online_resume  student.online_resume
json.github         student.github_url
json.photo          student.photo_url
json.experience     student.experiences do |experience|
  json.start_date     experience.start_date
  json.end_date       experience.end_date
  json.title          experience.job_title
  json.company        experience.company_name
  json.details        experience.details
end
json.education      student.educations do |education|
  json.start_date     education.start_date
  json.end_date       education.end_date
  json.degree         education.degree
  json.school         education.university_name
  json.details        education.details
end
json.skills         student.skills do |skill|
  json.name           skill.name
end
json.capstone do
  json.name           student.cap_name
  json.description    student.cap_desc
  json.url            student.cap_url
  json.screen_shot    student.cap_ss
end