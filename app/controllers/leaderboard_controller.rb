MyApp.get  "/view_leaderboard" do

  @all_signups = Signup.all

  @all_signups.each do |v|

    if v.swimmer_id == nil
      v.swimmer_id = 00
    else
    end

    if v.event_id == nil
      v.event_id == 00
    else
    end

    if v.school_id == nil
      v.school_id == 00
    else
    end

      if v.completed_swim_time == nil
      v.completed_swim_time = 999999
    else
    end

    if v.conference_id == nil
      v.conference_id = 00
    else
    end
    end

  event_id_dump = []

  @all_signups.each do |e|

    event_id_dump << e.event_id

  end
  
  @ordered_event_ids = event_id_dump.uniq
  ordered_signups = []
  @ordered_event_ids.each do |q|
    
    x = Signup.where("event_id" => q)
    ordered_signups << x
  end
    @ordered_signups_array = ordered_signups.to_a
  
  binding.pry








  #@all_signups.sort_by { |k| k["event_id"] }



    #e.sort_by(event_id)

    #unsorted_times << e.completed_swim_time

  erb :"view_leaderboard"
end