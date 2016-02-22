MyApp.get "/score_locked/:comp_id" do
  @comp = Competition.find_by_id(params[:comp_id])
  @whole_comp = Result.where(competition_id: params[:comp_id])
  erb :"successful/score_was_locked"
end