MyApp.get "/create_result" do
  erb :"data_entry/result_new"
end

MyApp.get "/result_created" do
  x = Result.new
  x.name = params["result"]
  # x.school = params["school_id"]
  x.save

  erb :"created/created_result"
end