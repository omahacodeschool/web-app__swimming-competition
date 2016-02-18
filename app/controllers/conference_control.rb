MyApp.get "/conference_form/new" do
  erb :"conference/conference_form"
end


MyApp.get "/conference_form/create" do
  @c = Conference.new
  @c.conference = params["conference"]
  @c.save
erb :"conference/conference_form" 
end

MyApp.get "/conference_table" do
  @info = Conference.all
  binding.pry
  erb :"conference/conference_table"
end

MyApp.get "/delete_conference/:id" do
  @info = Conference.find_by_id(params[:id])
  erb :"conference/conference_delete"
end