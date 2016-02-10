
MyApp.get "/" do
  erb :"admin/welcome"
end

MyApp.get "/add/student" do
  erb :"admin/add_student"
end

MyApp.get "/add/college" do
  erb :"admin/add_college"
end