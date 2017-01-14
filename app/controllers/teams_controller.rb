MyApp.post "/teams_form" do
  @teams = Team.all
  @team  = Team.new

  @team.team_name     = (params["team_name"])
  @team.conference_id = (params["select_conference"].to_i) 

  if @team.is_valid 
    @team.save

    erb :"main/add_teams"
  else
    erb :"main/error"
  end
end

MyApp.get "/delete_team/:team_id" do
  @teams = Team.all
  @team  = Team.find_by_id(params[:team_id])
  
  @team.delete
    
  erb :"main/add_teams"
end

MyApp.get "/update_team/:team_id" do
  @teams = Team.all
  @team  = Team.find_by_id(params[:team_id])

  erb :"main/update_team"
end

MyApp.post "/process_team_update/:team_id" do
  @teams = Team.all
  @team  = Team.find_by_id(params[:team_id])

  @team.team_name     = (params["team_name_update"])
  @team.conference_id = (params["select_conference_update"].to_i)

  if @team.is_valid 
    @team.save

    erb :"main/add_teams"
  else
    erb :"main/error"
  end
end