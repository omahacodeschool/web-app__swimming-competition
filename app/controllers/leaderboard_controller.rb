MyApp.get  "/view_leaderboard" do

  @all_signups = Signup.all
  
  erb :"view_leaderboard"
end