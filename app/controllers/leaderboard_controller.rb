MyApp.get  "/view_leaderboard" do

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

        @all_times = []

        @sorted_signup_records.each do |x|
          @all_times << x.last.to_i
        end

        hsh_all_times_and_ids = {}
        @all_times.each do |z|

          key = z
          val = z[3]

          hsh_all_times_and_ids[key] = val
        end

        @show_times = hsh_all_times_and_ids.sort_by {|_key, value| value}



        #@all_times_low_to_high = @all_times.sort

        #@sorted_signup_records[]

          

#Further sort out @sorted_signup_records, make tables in the view for top three swimmers in each event.


  erb :"view_leaderboard"
end