MyApp.get "/add_time/:place" do
  @signup = Signup.find_by_id(params[:place])
  
  erb :"signup_time"
end
MyApp.get "/complete_add_time/:place" do
  @signup = Signup.find_by_id(params[:place])
  @signup.event_time = params[:time]
  @signup.save 
  erb :"follower"
end
MyApp.get "/add_signup_swimmer" do
  @swimmer = Swimmer.find_by_id(params[:new_signup])
  @swimmer.set_events(params[:event_id])
  erb :"follower"
end

MyApp.get "/delete_signup/:placeholder" do
  @signup = Signup.find_by_id(params[:placeholder])
  
  @signup.delete
  erb :"administrator"
end
MyApp.get "/view_signup/:place" do
  @signup = Signup.find_by_id(params[:place])
  @school = School.find_by_id(params[:place])

  erb :"view_signup"
end
MyApp.get "/event_result/:place" do
  @signup = Signup.find_by_id(params[:place])

end