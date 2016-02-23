MyApp.post "/add_signup_confirmation" do

  @signups = Signup.all

  signup_new = Signup.new
  @swimmers = Swimmer.all
  @events = Event.all
  swimmer_1 = Swimmer.find_by_id(params["swim_signup_id"])
  signup_new.swimmer_id = swimmer_1.id

  x = Event.find_by_id(params["event_signup_id"])
  signup_new.event_id = x.id 
  signup_new.save
  
  

  erb :"/signups/add_signup"
end

MyApp.post "/delete_signup/:signup_id" do
  @signups = Signup.all
  @swimmers = Swimmer.all
  @events = Event.all
  signup_1 = Signup.find_by_id(params[:signup_id])
  signup_1.delete

  

  erb :"/signups/add_signup"
end


MyApp.get "/add_signup" do
  @signups = Signup.all
  @swimmers = Swimmer.all
  @events = Event.all
  

  
  erb :"/signups/add_signup"
end
