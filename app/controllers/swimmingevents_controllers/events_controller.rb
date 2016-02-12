require 'pry'
MyApp.get "/newevent" do
  
  e = Event.new
  e.event_name = params[:neweventname]
  e.save
  neweventname = params[:neweventname]
  erb :"/ev/eventaddsuccess"

end


MyApp.get "/events" do
  
  @events = Event.all
  erb :"/ev/events"
  
end

MyApp.get "/view_event/:id" do
  @currentevent = Event.find_by_id(params[:id])
  @signups = Signup.all
  z = Signup.where({"event_id" => (params[:id])})
  @swimmers = []
  z.each do |banana|
    @swimmers << banana.find_swimmer_name
  end
  #binding.pry
  erb :"/ev/view_event"
end



#DB.define_table("events")
#DB.define_column("events","event_name","string")