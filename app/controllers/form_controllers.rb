MyApp.get "/submit_chili" do

erb :"chili_was_added"
end

MyApp.get "/submit_region" do
  @obj = Region.new
  @obj.city = params[:city_name]
  @obj.save
erb :"successful/city_was_added"
end

MyApp.get "/submit_competition" do

erb :"successful/competition_was_added"
end

MyApp.get "/submit_contestant" do

erb :"successful/contestant_was_added"
end

MyApp.get "submit_score" do

erb :"successful/scores_was_added"
end