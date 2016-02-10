MyApp.get "/competitors" do
  x = Competitor.new
  x.first_name = params["fname"]
  x.last_name = params["lname"]
  x.school_id = params["school"]
  x.save
  @y = [x.first_name, x.last_name, x.school_id]
  erb :"/competitors"
end