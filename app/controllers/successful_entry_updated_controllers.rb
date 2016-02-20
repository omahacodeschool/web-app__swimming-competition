MyApp.get "/submit_city_update/:num" do
  @upd = Region.find_by_id(params[:num])
  @upd.city = params[:city_name]
  @upd.save
  erb :"successful/city_was_updated"
end

MyApp.get "/submit_chili_update/:num" do

  erb :"successful/chili_was_updated"
end

MyApp.get "/submit_competition_update/:num" do

  erb :"successful/competition_was_updated"
end

MyApp.get "/submit_contestant_update/:num" do

  erb :"successful/contestant_was_updated"
end

MyApp.get "/submit_scores_update/:num" do

  erb :"successful/scores_was_updated"
end