MyApp.get "/colleges/add_college" do
  @conference = Conference.all

  erb :"/colleges/add_college"
end

MyApp.get "/colleges/added_new_college" do
  c = College.new
  c.name = params["add_college_name_textbox"]
  conference = params["college_conference_dropdown"]
  c.conference_id = conference
  c.save
  erb :"/colleges/added_college_confirmation"
end

MyApp.get "/colleges/college/:id" do
  @college = College.find_by_id(params[:id])
  erb :"/colleges/college"
end