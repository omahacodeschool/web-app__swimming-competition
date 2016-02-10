MyApp.get "/add_teams" do
  @teams = Team.all

  erb :"main/add_teams"
end

MyApp.get "/teams_form" do
  @teams = Team.all
  @t = Team.new
  @t.team_name = (params["team_to_add"])
  @t.conference = (params["conference_to_add"])
  @t.team_member_count = (params["team_member_to_add"])
  @t.save
  
  erb :"main/add_teams"
end