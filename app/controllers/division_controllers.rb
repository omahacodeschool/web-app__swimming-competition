MyApp.get "/division_form" do
  erb :"division_views/division_form"
end

MyApp.post "/add_division" do
  x = Division.new
  x.division = params["division"]
  x.save
  erb :"division_views/add_success"
end

MyApp.get "/division_list" do
  @divisions = Division.all
  erb :"division_views/division_list"
end

MyApp.get "/division/:division_id" do
  @division = Division.find_by_id(params[:division_id])
  erb :"division_views/view_division"
end

MyApp.post "/delete_division/:division_id" do
  @division = Division.find_by_id(params[:division_id])
  @division.delete
  erb :"division_views/delete_success"
end