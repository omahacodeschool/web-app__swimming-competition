MyApp.get "/competition_info/:comp_id" do
  @comp_obj = Competition.find_by_id(params[:comp_id])
  @comp_score = Result.find_by_competition_id(params[:comp_id])
  erb :"details/competition_details"
end

