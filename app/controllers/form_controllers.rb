MyApp.get "/submit_chili" do

erb :"chili_was_added"
end

MyApp.get "/submit_region" do
  @obj = Region.new
  @obj.city = params[:city_name]
  @obj.save
erb :"city_was_added"
end

MyApp.get "/submit_competition" do

erb :"competition_was_added"
end

MyApp.get "/submit_contestant" do

erb :"contestant_was_added"
end

MyApp.get "submit_score" do

erb :"scores_was_added"
end