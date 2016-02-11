# ALL COLLEGE CONTROLLERS GO HERE

MyApp.get "/college/create" do
  @college = College.new
  @college.college_name = params["college_name"]
  @college.conference_id = params["conference_id"]
  @college.save
  erb :"admin/confirm_submission"
end

MyApp.get "/read/colleges" do
  @colleges = College.all
  erb :"admin/read_colleges"
end