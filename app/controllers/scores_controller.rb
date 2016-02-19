MyApp.post "/add_score_confirmation" do

  x = Signup.find_by_id(params["signup_1_id"])
  x.completed_swim_time =  params["signup_1_time"]
  x.save

erb :"/scores/add_score"
end


MyApp.get "/add_score" do

  @sorted_signup_records = Signup.sort_signups_for_viewing_table

  erb :"/scores/add_score"
end

