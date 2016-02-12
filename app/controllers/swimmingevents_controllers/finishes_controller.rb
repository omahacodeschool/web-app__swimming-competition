

MyApp.get "/finishes" do
  @events = Event.all
  erb :"/ev/finishes"
end

MyApp.get "/view_finish/:id" do
  @currentevent = Event.find_by_id(params[:id])
  @signups = Signup.all
  @z = Signup.where({"event_id" => (params[:id])})
  #binding.pry
  erb :"/ev/view_finish"
end

MyApp.get "/updatefinish/:id" do
  @currentevent = @currentevent
  @swimmer = Swimmer.find_by_id(params[:id])
  #:id here is the SWIMMER in this EVENT
  ##@currentswimmer = Swimmer.find_by_id(params[:id])
  ##@signups = Signup.all
  ##z = Signup.where({"swimmer_id" => (params[:id])})
  ##@events = []
  ##z.each do |banana|
  ##  @events << banana.find_event_name
  ##end
  #binding.pry
  erb :"ev/updatefinish"
end


#finish refers to the TIME that the swimmer FINISHED a match
#DB.define_table("finishes")
#DB.define_column("finishes","signup_id","integer")
#DB.define_column("finishes","finish_time","time")