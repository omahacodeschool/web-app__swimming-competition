MyApp.get "/add_signup_swimmer" do
  @signup_swimmer = Signup.new
  @signup_swimmer.swimmer_id = params[:new_signup]
  @signup_swimmer.event_id = params[:event_id]
  @signup_swimmer.save
  erb :"administrator"
end
# MyApp.get "/add_signup_event" do
#   signup_event = Signup.new
#   signup_event.event_id = params[:event_id]
#   signup_event.save
#   erb :"administrator"
# end
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

#I want to update my schema for signup and include slots for 5 swimmers
#to sign up, then all the swimmers and the event id would have the save
#overall 'signup id'...