User.create!([
  {email: "tiffany.j.price@gmail.com", password: "password"},
  {email: "nick@acltc.com", password: "password"},
  {email: "matt@acltc.com", password: "password"}
])
Education.create!([
  {start_date: "1989-05-01", end_date: "1993-06-01", degree: "BA", university_name: "Emory University", details: "Chemistry, International Studies", student_id: 1},
  {start_date: "2000-05-01", end_date: "2004-06-06", degree: "BA", university_name: "UC Berkeley", details: "Computer Science", student_id: 2},
  {start_date: "2005-05-01", end_date: "2009-06-05", degree: "BA", university_name: "Stanford University", details: "Aeronautical Engineering", student_id: 3}
])
Experience.create!([
  {start_date: "2008-08-01", end_date: "2015-12-20", job_title: "Community Engagement Manager", company_name: "Kapor Center for Social Impact", details: nil, student_id: 1},
  {start_date: "2013-01-02", end_date: "2015-12-20", job_title: "Dev Opps Czar", company_name: "Roblox", details: nil, student_id: 2},
  {start_date: "2012-02-03", end_date: "2015-12-20", job_title: "Software Engineer", company_name: "ACLTC", details: nil, student_id: 3}
])
Skill.create!([
  {name: "Ruby on Rails", student_id: 1},
  {name: "SQL", student_id: 2},
  {name: "HTML/CSS", student_id: 3}
])
Student.create!([
  {first_name: "Tiffany", last_name: "Price", email: "tiffany.j.price@gmail.com", phone: "5102554651", short_bio: "I am Tiffany, and I am awesome. Hire me.", linkedin_url: "https://www.linkedin.com/in/tiffanyjprice", twitter_url: "@THoodPrice", blog_url: "www.tiffanyhoodprice.com", online_resume: nil, github_url: nil, photo_url: nil, cap_name: nil, cap_desc: nil, cap_url: nil, cap_ss: nil, user_id: nil},
  {first_name: "Nick", last_name: "Raccioppi", email: "nick@acltc.com", phone: "123-456-7890", short_bio: "Nick is my name. Dev Opps is my game.", linkedin_url: "https://www.linkedin.com/in/nickracci", twitter_url: nil, blog_url: "www.nickwins.com", online_resume: nil, github_url: nil, photo_url: nil, cap_name: nil, cap_desc: nil, cap_url: nil, cap_ss: nil, user_id: nil},
  {first_name: "Matt", last_name: "Gainer", email: "matt@acltc.com", phone: "234-567-8901", short_bio: "I know software engineering. You need code? I'm your man.", linkedin_url: "https://www.linkedin.com/in/mattgainer", twitter_url: nil, blog_url: "www.gainwithgainer.com", online_resume: nil, github_url: nil, photo_url: nil, cap_name: nil, cap_desc: nil, cap_url: nil, cap_ss: nil, user_id: nil}
])
