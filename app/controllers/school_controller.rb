MyApp.get "/create_school" do
  erb :"data_entry/school_new"
end

MyApp.get "/school_created" do
  x = School.new
  x.name = params["school"]
  # x.school = params["school"]
  # x.conference = params["conference_id"]
  x.save

  erb :"created/created_school"
end