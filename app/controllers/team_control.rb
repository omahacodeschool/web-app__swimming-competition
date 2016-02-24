# New team form
MyApp.get "/team_form/new" do
  erb :"team/team_form"
end

#Creates new Team row
MyApp.post "/team_form/create" do
 @t = Team.new
 @t.team = params["team"]
 @t.conference_id = params["conference_id"]
 @t.save
 erb :"team/team_form"
end

#Displays Team Table view
MyApp.get "/team_table" do
 @info = Team.all
 erb :"/team/team_table"
end

#Updates team
MyApp.get "/edit_team/:id" do
 @info = Team.find_by_id(params[:id])
 erb :"team/edit_team_form"
end

#Updates team
MyApp.get "/edit_team/:id" do
 @info = Team.find_by_id(params[:id])
 erb :"team/edit_team_form"
end


MyApp.post "/process_edit_form" do
 @info = Team.find_by_id(params[:id])
 @info.team = params["team"]
 @info.conference_id = params["conference_id"]
 @info.save
 erb :"team/updated_team"
end

#Deletes team
MyApp.get "/delete_team/:id" do
 team = Team.find_by_id(params[:id])
 team.delete
 erb :"team/team_deleted"
end
