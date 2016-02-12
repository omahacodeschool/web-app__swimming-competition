MyApp.get "/conferences/add_conference" do


  erb :"/conferences/add_conference"
end

MyApp.get "/conferences/added_new_conference" do
  c = Conference.new
  c.name = params["add_conference_name_textbox"]
  c.save
  erb :"/conferences/added_conference_confirmation"
end

MyApp.get "/conferences/conference/:id" do
  @conference = Conference.find_by_id(params[:id])
  erb :"/conferences/conference"
end