MyApp.post "/add_score_confirmation" do
  @sorted_signup_records = Signup.sort_signups_for_viewing_table
  p = params["signup_ids_to_score"]
  p.each do |i|
    x = Signup.find_by_id(i)
    x.completed_swim_time =  params["signup_1_time"]
    x.save
  end
  @sorted_signup_records = Signup.sort_signups_for_viewing_table
erb :"/scores/add_score"
end


MyApp.get "/add_score" do

  @sorted_signup_records = Signup.sort_signups_for_viewing_table

  erb :"/scores/add_score"
end

