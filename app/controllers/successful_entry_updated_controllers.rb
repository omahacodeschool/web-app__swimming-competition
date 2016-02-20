MyApp.get "/update_city_form/:num" do
  @city = Region.find_by_id(params[:num])
  erb :"update_entry/update_city_form"
end

MyApp.get "/submit_city_update/:num" do
  @upd = Region.find_by_id(params[:num])
  @upd.city = params[:city_name]
  @upd.save
  erb :"successful/city_was_updated"
end

MyApp.get "/update_chili_form/:num" do
  @chili = Chili.find_by_id(params[:num])
  erb :"update_entry/update_chili_form"
end

MyApp.get "/submit_chili_update/:num" do

  erb :"successful/chili_was_updated"
end

MyApp.get "/update_competition_form/:num" do

  erb :"update_entry/update_competition_form"
end

MyApp.get "/submit_competition_update/:num" do

  erb :"successful/competition_was_updated"
end

MyApp.get "/update_contestant_form/:num" do
  
  erb :"update_entry/update_contestant_form"
end

MyApp.get "/submit_contestant_update/:num" do

  erb :"successful/contestant_was_updated"
end

MyApp.get "/update_scores_form/:num" do
  
  erb :"update_entry/update_scores_form"
end

MyApp.get "/submit_scores_update/:num" do

  erb :"successful/scores_was_updated"
end