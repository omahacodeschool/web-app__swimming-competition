MyApp.post "/view_add_signup_confirmation" do

  signup_new = Signup.new

  a = Swimmer.find_by_swimmer_name(params["swim_signup_name"])
  #THIS is not perfect. Revisit!______________________
  signup_new.swimmer_id = a.id

  x = Event.find_by_event_name(params["event_signup_name"])
  signup_new.event_id = x.id 
  signup_new.save
  
  @all_signups = Signup.all
  erb :"view_add_signup"
end

MyApp.post "/delete_signup/:signup_id" do
  @signup = Signup.find_by_id(params[:signup_id])
  @signup.delete
  @all_signups = Signup.all

  erb :"view_add_signup"
end


MyApp.get "/view_add_signup" do

  @all_signups = Signup.all

  
  erb :"view_add_signup"
end
