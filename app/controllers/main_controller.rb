MyApp.get "/" do
  erb :"homepage"
end

MyApp.get "/add_region" do
  erb :"add_city"
end

MyApp.get "/add_contestant" do
  @regions = Region.all
  erb :"add_contestant"
end

MyApp.get "/add_chili" do
  @people = Contestant.all
  erb :"add_chili"
end

MyApp.get "/add_competition" do
  erb :"add_competition"
end

MyApp.get "/add_scores" do
  @contestants = Contestant.all
  @chilis = Chili.all
  @competitions = Competition.all
  erb :"add_scores"
end

MyApp.get "/winners" do
  erb :"winners_by_year"
end

MyApp.get "/2015" do
  erb :"2015_winners"
end

MyApp.get "/2016" do
  erb :"2016_winners"
end


