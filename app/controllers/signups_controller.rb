MyApp.post "/add_signup_confirmation" do

  signup_new = Signup.new

  swimmer_1 = Swimmer.find_by_swimmer_name(params["swim_signup_name"])
  signup_new.swimmer_id = swimmer_1.id

  x = Event.find_by_event_name(params["event_signup_name"])
  signup_new.event_id = x.id 
  signup_new.save
  
  @all_signups = Signup.all

  erb :"views/signups/add_signup"
end

MyApp.post "/delete_signup/:signup_id" do
  signup_1 = Signup.find_by_id(params[:signup_id])
  signup_1.delete

  @all_signups = Signup.all

  erb :"views/signups/add_signup"
end


MyApp.get "/add_signup" do

  @all_signups = Signup.all

  
  erb :"views/signups/add_signup"
end
