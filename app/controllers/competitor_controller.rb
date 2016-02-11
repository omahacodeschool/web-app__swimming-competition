MyApp.get "/add_competitor" do
  x = Competitor.new
  x.name = params["name"]
  # x.school = params["school_id"]
  x.save

  erb :"created/created_competitor"
end
