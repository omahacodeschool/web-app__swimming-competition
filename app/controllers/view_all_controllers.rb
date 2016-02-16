MyApp.get "/view_contestants" do
  @con = Contestant.all
  erb :"all_entries/all_contestants"
end

MyApp.get "/view_regions" do
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

MyApp.get "/view_results" do
  @scores = Result.all
  erb :"all_entries/all_results"
end

MyApp.get "/category_info/:category_id" do
  erb :"all_entries/category_info"
end
