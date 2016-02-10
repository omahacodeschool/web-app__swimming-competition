MyApp.get "/schools" do 
  x = School.new
  x.school = params["school"]
  x.conference_id = params["conf_id"]
  x.save
  @y = [x.school, x.conference_id]
  erb :"/schools"
end