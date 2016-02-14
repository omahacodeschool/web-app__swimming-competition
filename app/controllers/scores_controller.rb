MyApp.post  "/view_add_score_confirmation" do

  #Add time to Signup.completed_swim_time
  #save
  y = params["signup_1_id"]

  x = Signup.find_by_id(y)

  x.completed_swim_time =  params["signup_1_time"]

  x.save
  

erb :"view_add_score_confirmation"
end

MyApp.get  "/view_add_score" do

@sorted_signup_records = []

  Signup.all.each do |x| 
        @signup_records = []

        primary_key = x.id
        @signup_records << primary_key

        name = x.get_swimmer_name
          if name == nil
            name = "X"
          end
        @signup_records << name

        school = x.get_school_name
          if school == nil
            school = "X"
          end
        @signup_records << school
   
        event = x.get_event_name
          if event == nil
            event = "X"
          end
        @signup_records << event

        time = x.completed_swim_time
          if time == nil
            time = "Not Yet Scored"
          end
        @signup_records << time
        @sorted_signup_records << @signup_records
  end


  erb :"view_add_score"
end

