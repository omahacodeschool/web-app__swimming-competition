MyApp.post "/view_add_signup_confirmation" do

  signup_new = Signup.new

  signup_new.swimmer_id = Swimmer.where("swimmer_name" => params["swim_signup_name"]).id

  signup_new.event_id = Event.where("event_name" => params["event_signup_name"]).id
  signup_new.save

  @show_got_event_id = signup_new.id
  @show_got_swim_id = signup_new.swimmer_id

  @all_signups = Signup.all

  erb :"view_add_signup_confirmation"
end


MyApp.get "/view_add_signup" do

  @all_signups = Signup.all

  
  erb :"view_add_signup"
end
