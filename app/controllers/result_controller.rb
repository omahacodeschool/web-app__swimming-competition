MyApp.get "/create_result" do
  erb :"create/create_result"
end

MyApp.get "/create_result/success" do
  x = Result.new
  x.name = params["result"]
  # x.school = params["school_id"]
  x.save

  erb :"/create/create_result_success"
end