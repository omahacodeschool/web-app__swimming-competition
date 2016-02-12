# view that shows the form for adding a 'competitor'.
MyApp.get "/create_competitor" do
  erb :"/create/create_competitor"
end

# view that shows the user they have successfully created a competitor. 
MyApp.get "/create_competitor/success" do
  x = Competitor.new
  # x.competitor_name is a new Active Recored method that sets a Competitor Object attribute name to 'competitor_name'.
  x.competitor_name = params["competitor_entered"]
  # x.save is a new Active Record method that saves that Competitor Object to the 'competitors' table.
  x.save
  # binding.pry # what is 'x'?
  erb :"/create/create_competitor_success"
end
