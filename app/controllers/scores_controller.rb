MyApp.post  "/view_add_score_confirmation" do

  #Add time to Signup.completed_swim_time
  #save

erb :"view_add_score_confirmation"
end

MyApp.get  "/view_add_score" do
  erb :"view_add_score"
end