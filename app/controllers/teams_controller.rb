MyApp.get "/teams_form" do
  @teams = Team.all
  @t = Team.new

  @t.conference_id = (params["select_conference"])  
  @t.team_name = (params["team_to_add"])
  @t.save

  erb :"main/add_teams"
end