MyApp.get  "/leaderboard" do
  # Still under construction:

  # @all_signups = Signup.all
  # event_id_dump = []

  # @all_signups.each do |e|
  #   event_id_dump << e.event_id
  # end
  
  # @ordered_event_ids = event_id_dump.uniq
  # ordered_signups = []
  # @ordered_event_ids.each do |q|
    
  #   Signup.where("event_id" => q).each do |k|
  #   ordered_signups << k

  #   end
  # end
  #   @ordered_signups_array = ordered_signups.to_a
  


  erb :"views/leaderboard/leaderboard"
end