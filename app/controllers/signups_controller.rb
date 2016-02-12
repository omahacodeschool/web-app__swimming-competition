MyApp.post "/view_add_signup_confirmation" do

  @signup_1 = Signup.new
  

  x = params["swim_signup_name"]

  @signup_1.swimmer_id = Swimmer.where("swimmer_name like ?", x ).first.id
  
  @show_got_swim_id = @signup_1.swimmer_id


  y = params["event_signup_name"]

  @signup_1.event_id = Event.where("event_name like ?", y ).first.id

  @show_got_event_id = @signup_1.event_id


  @signup_1.save

  erb :"view_add_signup_confirmation"
end


MyApp.get "/view_add_signup" do

  erb :"view_add_signup"
end
