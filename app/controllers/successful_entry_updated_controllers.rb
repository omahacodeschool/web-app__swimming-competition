MyApp.get "/submit_city_update/:num" do
  @upd_ct = Region.find_by_id(params[:num])
  @upd_ct.city = params[:city_name]
  @upd_ct.save
  erb :"successful/city_was_updated"
end

MyApp.get "/submit_chili_update/:num" do
  @upd_ch = Chili.find_by_id(params[:num])
  @upd_ch.name = params[:chili_name]
  @upd_ch.save
  erb :"successful/chili_was_updated"
end

MyApp.get "/submit_competition_update/:num" do
  @upd_comp = Competition.find_by_id(params[:num])
  @upd_comp.name = params[:competition_name]
  @upd_comp.save
  erb :"successful/competition_was_updated"
end

MyApp.get "/submit_contestant_update/:num" do
  @upd_cont = Contestant.find_by_id(params[:num])
  @upd_cont.first_name = params[:first_name]
  @upd_cont.last_name = params[:last_name]
  @upd_cont.save
  erb :"successful/contestant_was_updated"
end

MyApp.get "/submit_scores_update/:num" do
  @upd_sc = Result.find_by_id(params[:num])
  @upd_sc.aroma = params[:aroma_score]
  @upd_sc.appearance = params[:appearance_score]
  @upd_sc.heat = params[:heat_score]
  @upd_sc.flavor = params[:flavor_score]
  @upd_sc.texture = params[:texture_score]
  @upd_sc.overall = @upd_sc.aroma + @upd_sc.appearance + @upd_sc.heat + @upd_sc.flavor + @upd_sc.texture
  @upd_sc.save
  erb :"successful/scores_was_updated"
end