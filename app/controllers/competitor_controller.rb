MyApp.get "/create_competitor" do
  erb :"/create/create_competitor"
end

MyApp.get "/create_competitor/success" do
  x = Competitor.new
  x.name = params["name"]
  x.save

  erb :"/create/create_competitor_success"
end
