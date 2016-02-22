MyApp.get "/add_city" do
  erb :"add_entry/add_city_form"
end

MyApp.get "/add_contestant" do
  @regions = Region.all
  erb :"add_entry/add_contestant_form"
end

MyApp.get "/add_chili" do
  @people = Contestant.all
  erb :"add_entry/add_chili_form"
end

MyApp.get "/add_competition" do
  erb :"add_entry/add_competition_form"
end

MyApp.get "/add_scores/:comp_id" do
  @all_chilis = Result.where(competition_id: params[:comp_id])  
  erb :"add_entry/add_scores_form"
end

MyApp.get "/add_scores" do
  @comps = Competition.all
  erb :"add_entry/select_competition"
end

MyApp.get "/add_contestant_to_competition_form/:competition_id" do
  @chili_selection = Chili.all
  @new_entry = Result.new
  @new_entry.competition_id = params[:competition_id]
  @new_entry.save
  erb :"add_entry/add_contestant_to_competition_form"
end