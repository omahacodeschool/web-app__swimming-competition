

MyApp.get "/finishes" do
  @events = Event.all
  erb :"/ev/finishes"
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


#finish refers to the TIME that the swimmer FINISHED a match
#DB.define_table("finishes")
#DB.define_column("finishes","signup_id","integer")
#DB.define_column("finishes","finish_time","time")