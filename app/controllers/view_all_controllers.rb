MyApp.get "/view_contestants" do
  @con = Contestant.all
  erb :"all_entries/all_contestants"
end

MyApp.get "/view_cities" do
  @regions = Region.all
  erb :"all_entries/all_cities"
end

MyApp.get "/view_chilies" do
  @noms = Chili.all
  erb :"all_entries/all_chilies"
end

MyApp.get "/view_competitions" do
  @all_cats = Competition.all
  erb :"all_entries/all_competitions"
end

MyApp.get "/view_scores" do
  @scores = Result.all
  erb :"all_entries/all_scores"
end

