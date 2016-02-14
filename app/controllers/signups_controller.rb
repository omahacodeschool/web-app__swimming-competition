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

  @sorted_signup_records = []

  Signup.all.each do |x|
        @signup_records = []

        name = x.get_swimmer_name
          if name == nil
            name = "empty"
          end
        @signup_records << name

        school = x.get_school_name
          if school == nil
            school = "empty"
          end
        @signup_records << school
   
        event = x.get_event_name
          if event == nil
            event = "empty"
          end
        @signup_records << event

        time = x.completed_swim_time
          if time == nil
            time = "empty"
          end
        @signup_records << time
        @sorted_signup_records << @signup_records
  end

  
  erb :"view_add_signup"
end
