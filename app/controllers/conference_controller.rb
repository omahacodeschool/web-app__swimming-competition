MyApp.post "/view_add_conference_confirmation" do


  @conference_1 = Conference.new
  @conference_1.conference_name = (params["conference_1_name"])
  @conference_1.save
  @show_conference_id = @conference_1.id
  @show_added_conference = (params["conference_1_name"])

  
  erb :"view_add_conference_confirmation"
end

MyApp.get "/view_add_conference" do

  erb :"view_add_conference"
end

MyApp.get "/" do
  erb :"view_home_page"
end
