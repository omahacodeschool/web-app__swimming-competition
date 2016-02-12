MyApp.get "/submit_contestant" do
  @c = Contestant.new
  @c.first_name = params[:contestant_first_name]
  @c.last_name = params[:contestant_last_name]
  @c.city_id = params[:city_id]
  @c.save
  @con = Contestant.all
  erb :"successful/contestant_was_added"
end

MyApp.get "/submit_city" do
  @obj = Region.new
  @obj.city = params[:city_name]
  @obj.save
  @regions = Region.all
  erb :"successful/city_was_added"
end

MyApp.get "/submit_chili" do
  @f = Chili.new
  @f.name = params[:name_of_chili]
  @f.contestant_id = params[:contestant_id]
  @f.save
  @noms = Chili.all
  erb :"successful/chili_was_added"
end

MyApp.get "/submit_competition" do
  @cat = Competition.new
  @cat.name = params[:category]
  @cat.save
  @all_cats = Competition.all
  erb :"successful/competition_was_added"
end