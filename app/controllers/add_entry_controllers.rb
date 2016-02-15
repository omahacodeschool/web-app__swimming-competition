MyApp.get "/add_region" do
  erb :"add_entry/add_city"
end

MyApp.get "/add_contestant" do
  @regions = Region.all
  erb :"add_entry/add_contestant"
end

MyApp.get "/add_chili" do
  @people = Contestant.all
  erb :"add_entry/add_chili"
end

MyApp.get "/add_competition" do
  erb :"add_entry/add_competition"
end

MyApp.get "/add_scores" do
  @contestants = Contestant.all
  @chilis = Chili.all
  @competitions = Competition.all
  erb :"add_entry/add_scores"
end