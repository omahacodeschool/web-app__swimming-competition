MyApp.post "/view_add_signup_confirmation" do

  signup_new = Signup.new

  a = Swimmer.where("swimmer_name" => params["swim_signup_name"])

  signup_new.swimmer_id = a[0].id


  r = a[0].school_id
  s = School.find_by_id(r)

  x = Event.where("event_name" => params["event_signup_name"])
  signup_new.event_id = x.ids[0] 
  signup_new.save
  @new_signup = signup_new

  @show_got_event_id = x.ids[0]
  @show_got_swim_id = a.ids[0]

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
