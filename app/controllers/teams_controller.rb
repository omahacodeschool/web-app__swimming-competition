MyApp.post "/teams_form" do
  @teams = Team.all
  @t     = Team.new

  @t.team_name     = (params["team_name"])
  @t.conference_id = (params["select_conference"].to_i)  
  @t.save

  erb :"main/add_teams"
end

MyApp.get "/delete_team/:team_id" do
  @teams = Team.all
  @team  = Team.find_by_id(params[:team_id])
  
  @team.delete
    
  erb :"main/add_teams"
end