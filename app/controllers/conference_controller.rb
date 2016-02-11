MyApp.get "/create_conference" do
  erb :"/create/create_conference"
end

MyApp.get "/create_conference/success" do
  x = Conference.new
  x.name = params["conference"]
  x.save

  erb :"/create/create_conference_success"
end