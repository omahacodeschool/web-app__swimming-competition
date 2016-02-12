MyApp.post "/view_delete_data_confirmation" do
  Swimmer.delete_all
  Event.delete_all
  School.delete_all
  Signup.delete_all

  erb :"view_delete_data_confirmation"
end

MyApp.get "/view_delete_data" do

  erb :"view_delete_data"
end