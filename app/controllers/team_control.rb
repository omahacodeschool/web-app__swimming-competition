MyApp.get "/team_form/new" do
  erb :"team/team_form"
end

MyApp.get "/team_form/create" do
 @t = Team.new
 @t.team = params["team"]
 @t.conference_id = params["conference_id"]
 @t.save
 erb :"team/team_form"
end

MyApp.get "/team_table" do
 @info = Team.all
 erb :"/team/team_table"
end
