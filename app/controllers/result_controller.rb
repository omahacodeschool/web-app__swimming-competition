MyApp.get "/add_result" do
  x = Result.new
  x.name = params["result"]
  # x.school = params["school_id"]
  x.save

  erb :"created/created_result"
end