MyApp.get "/update_city_form/:num" do
  @city = Region.find_by_id(params[:num])
  erb :"update_entry/update_city_form"
end

MyApp.get "/update_chili_form/:num" do
  @chili = Chili.find_by_id(params[:num])
  erb :"update_entry/update_chili_form"
end

MyApp.get "/update_competition_form/:num" do
  @competition = Competition.find_by_id(params[:num])
  erb :"update_entry/update_competition_form"
end

MyApp.get "/update_contestant_form/:num" do
  @contestant = Contestant.find_by_id(params[:num])
  erb :"update_entry/update_contestant_form"
end
MyApp.get "/update_scores_form/:num" do
  @scores = Result.find_by_id(params[:num])
  erb :"update_entry/update_scores_form"
end