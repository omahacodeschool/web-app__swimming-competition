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
  erb :"conference/conference_table"
end

