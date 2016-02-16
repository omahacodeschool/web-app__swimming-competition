MyApp.post "/view_add_signup_confirmation" do

  @signup_1 = Signup.new

  @signup_1.swimmer_id = Swimmer.where("swimmer_name" => params["swim_signup_name"]).id

  @signup_1.event_id = Event.where("event_name" => params["event_signup_name"]).id
  @signup_1.save

  @show_got_event_id = @signup_1.id
  @show_got_swim_id = @signup_1.swimmer_id

  @all_signups = Signup.return_all_signups

  erb :"view_add_signup_confirmation"
end


MyApp.get "/view_add_signup" do

binding.pry

  @all_signups = Signup.return_all_signups

  
  erb :"view_add_signup"
end
