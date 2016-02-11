MyApp.get "/colleges" do 
  x = Conference.new
  x.name = params["conference"]
  x.save

  erb :"/competitors"