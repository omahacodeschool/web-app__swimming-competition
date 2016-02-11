MyApp.get "/create_conference" do
  erb :"data_entry/conference_new"
end

MyApp.get "/conference_created" do
  x = Conference.new
  x.name = params["conference"]
  # x.school = params["school_id"]
  x.save

  erb :"created/created_conference"
end