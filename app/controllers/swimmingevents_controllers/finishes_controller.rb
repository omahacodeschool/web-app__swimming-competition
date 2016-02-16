require 'pry'
MyApp.get "/finishes" do
  @events = Event.all
  erb :"/ev/finishes"
end

MyApp.get "/view_finish/:id" do
  @currentevent = Event.find_by_id(params[:id])
  if @currentevent.locked == true
    erb :"/ev/nocando"
  else
    @signups = Signup.all
    @swimmers = Swimmer.all
    @kitties = []
    z = Signup.where({"event_id" => (params[:id])})
    #z contains the swimmer_id, i need to match that to
    #the actual swimmer table
      z.each do |banana|
       @kitties << banana.find_swimmer
      end
    #binding.pry
    erb :"/ev/view_finish"
  end
end

MyApp.post "/updatefinish" do
  f = Finish.new
  f.swimmer_id = params[:swimmerid]
  f.event_id = params[:eventid]
  f.finish_time = params[:finishtime]
  f.save
  @events = Event.all
  erb :"ev/finishes"
end


#finish refers to the TIME that the swimmer FINISHED a match
#DB.define_table("finishes")
#DB.define_column("finishes","swimmer_id","integer")
#DB.define_column("finishes","event_id","integer")
#DB.define_column("finishes","finish_time","time")