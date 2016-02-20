MyApp.get "/competition_info/:category_id" do
  @comp_obj = Competition.find_by_id(params[:category_id])
  erb :"details/competiton_details"
end

