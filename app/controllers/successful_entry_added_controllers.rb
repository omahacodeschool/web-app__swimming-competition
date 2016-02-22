MyApp.get "/submit_chili" do
  @f = Chili.new
  @f.name = params[:name_of_chili]
  @f.contestant_id = params[:contestant_id]
  @f.save
  erb :"successful/chili_was_added"
end

MyApp.get "/submit_region" do
  @obj = Region.new
  @obj.city = params[:city_name]
  @obj.save
  erb :"successful/city_was_added"
end

MyApp.get "/submit_competition" do
  @cat = Competition.new
  @cat.name = params[:category]
  @cat.save
  erb :"successful/competition_was_added"
end

MyApp.get "/submit_contestant" do
  @c = Contestant.new
  @c.first_name = params[:contestant_first_name]
  @c.last_name = params[:contestant_last_name]
  @c.region_id = params[:city_id]
  @c.save
  erb :"successful/contestant_was_added"
end

MyApp.get "/submit_scores" do
  @score = Result.find_by_id(params[:result_id])
  @score.aroma = params[:aroma]
  @score.flavor = params[:flavor]
  @score.texture = params[:texture]
  @score.heat = params[:heat]
  @score.appearance = params[:appearance]
  @score.overall = @score.aroma + @score.flavor + @score.texture + @score.heat + @score.appearance
  @score.save
  erb :"successful/scores_was_added"
end

MyApp.get "/submit_contestant_to_competition/:result_id_num" do
  @new_competitor = Result.find_by_id(params[:result_id_num])
  @new_competitor.chili_id = params[:chili_id]
  @new_competitor.save
  erb :"successful/contestant_was_added_to_competition"
end




