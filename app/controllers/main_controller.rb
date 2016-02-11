
MyApp.get "/" do
  erb :"admin/welcome"
end

MyApp.get "/add/student" do
  erb :"admin/add_student"
end

MyApp.get "/add/college" do
  @conferences = Conference.all
  erb :"admin/add_college"
end

MyApp.get "/add/conference" do
  erb :"admin/add_conference"
end

MyApp.get "/add/activity" do
  erb :"admin/add_activity"
end

MyApp.get "/add/result" do
  erb :"admin/add_result"
end