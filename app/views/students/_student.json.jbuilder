json.id               student.id
json.first_name       student.first_name
json.last_name        student.last_name
json.email            student.email
json.phone            student.phone
json.short_bio        student.short_bio
json.linkedin_url     student.linkedin_url
json.twitter_url      student.twitter_url
json.blog_url         student.blog_url
json.online_resume    student.online_resume
json.github_url       student.github_url
json.photo_url        student.photo_url
json.experience       student.experiences do |experience|
 json.start_date       experience.start_date
 json.end_date         experience.end_date
 json.job_title        experience.job_title
 json.company_name     experience.company_name
 json.details          experience.details
end
json.education        student.educations do |education|
 json.start_date       education.start_date
 json.end_date         education.end_date
 json.degree           education.degree
 json.university_name  education.university_name
 json.details          education.details
end
json.skills           student.skills do |skill|
 json.name             skill.name
end
json.capstone do
 json.cap_name             student.cap_name
 json.cap_desc      student.cap_desc
 json.cap_url              student.cap_url
 json.cap_ss      student.cap_ss
end