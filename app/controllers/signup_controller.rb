MyApp.get "/add_signup_swimmer" do
  signup_swimmer = Signup.new
  signup_swimmer.swimmer_id = params[:new_signup]
  signup_swimmer.save
  erb :"administrator"
end
MyApp.get "/add_signup_event" do
  signup_event = Signup.new
  signup_event.event_id = params[:event_id]
  signup_event.save
  erb :"administrator"
end
MyApp.get "/delete_signup/:placeholder" do
  @signup = Signup.find_by_id(params[:placeholder])
  @signup.delete
  erb :"administrator"
end