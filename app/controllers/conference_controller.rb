MyApp.get "/add_conference" do
  x = Conference.new
  x.name = params["conference"]
  # x.school = params["school_id"]
  x.save

  erb :"created/created_conference"
end