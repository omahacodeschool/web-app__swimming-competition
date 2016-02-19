MyApp.post "/add_score_confirmation" do

  x = Signup.find_by_id(params["signup_1_id"])
  x.completed_swim_time =  params["signup_1_time"]
  x.save

erb :"views/scores/add_score"
end


MyApp.get "/add_score" do

  erb :"views/scores/add_score"
end

