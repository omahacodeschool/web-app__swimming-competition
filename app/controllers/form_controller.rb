MyApp.get "/view_contestants" do
  @c = Contestant.new
  @c.first_name = params[:contestant_first_name]
  @c.last_name = params[:contestant_last_name]
  @c.region_id = params[:city_id]
  @c.save
  @con = Contestant.all
  erb :"all_entries/all_contestants"
end

MyApp.get "/view_regions" do
  @obj = Region.new
  @obj.city = params[:city_name]
  @obj.save
  @regions = Region.all
  erb :"all_entries/all_cities"
end

MyApp.get "/view_chilies" do
  @f = Chili.new
  @f.name = params[:name_of_chili]
  @f.contestant_id = params[:contestant_id]
  @f.save
  @noms = Chili.all
  erb :"all_entries/all_chilies"
end

MyApp.get "/view_competitions" do
  @cat = Competition.new
  @cat.name = params[:category]
  @cat.save
  @all_cats = Competition.all
  erb :"all_entries/all_competitions"
end

MyApp.get "/view_results" do
  @score = Result.new
  @score.chili_id = params[:chili_id]
  @score.competition_id = params[:competition_id]
  @score.aroma = params[:aroma]
  @score.flavor = params[:flavor]
  @score.texture = params[:texture]
  @score.heat = params[:heat]
  @score.overall = params[:overall]
  @score.appearance = params[:appearance]
  @score.save
  @scores = Result.all
  erb :"all_entries/all_results"
end
