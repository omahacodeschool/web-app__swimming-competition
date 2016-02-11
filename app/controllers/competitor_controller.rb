MyApp.get "/create_competitor" do
  erb :"data_entry/competitor_new"
end

MyApp.get "/competitor_created" do
  x = Competitor.new
  x.name = params["name"]
  # x.school = params["school_id"]
  x.save

  erb :"created/created_competitor"
end
