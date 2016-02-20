MyApp.get "/add_city" do
  erb :"add_entry/add_city_form"
end

MyApp.get "/add_contestant" do
  @regions = Region.all
  erb :"add_entry/add_contestant_form"
end

MyApp.get "/add_chili" do
  @people = Contestant.all
  erb :"add_entry/add_chili_form"
end

MyApp.get "/add_competition" do
  erb :"add_entry/add_competition_form"
end

MyApp.get "/add_scores" do
  @contestants = Contestant.all
  @chilis = Chili.all
  @competitions = Competition.all
  erb :"add_entry/add_scores_form"
end