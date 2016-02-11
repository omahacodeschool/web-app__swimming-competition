MyApp.get "/add_school" do
  x = School.new
  x.name = params["school"]
  # x.school = params["school"]
  # x.conference = params["conference_id"]
  x.save

  erb :"created/created_school"
end