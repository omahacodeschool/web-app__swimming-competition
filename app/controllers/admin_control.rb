MyApp.get "/" do
  erb :"admin/admin_page"
end

MyApp.get "/gender_form" do
  erb :"/gender/gender_form"
end

MyApp.get "/sign_up/new" do
  erb :"sign_up_form"
end