#winners controller goes here
#who won!
require 'pry'
MyApp.get "/winners" do
  @events = Event.all
  erb :"/ev/winners"
  #splash page of events
end

MyApp.get "/view_winner/:id" do
#####################THIS IS WHERE YOU STOPPED
  @currentevent = Event.find_by_id(params[:id])
  if x == []
    @event.delete
    erb :"/cv/deletesuccess"
  else 
    @f = Finish.all
    @finishes = Finish.finish_array(params[:id])
    
    @x = Finish.where({"event_id" => params[:id]})
    
    first = @x.find_by({"finish_time"=> @finishes[0]})
    @firstplacekitten = Swimmer.find_by_id(first.swimmer_id)
    
    second = @x.find_by({"finish_time"=> @finishes[1]})
    @secondplacekitten = Swimmer.find_by_id(second.swimmer_id)
    
    third = @x.find_by({"finish_time"=> @finishes[2]})
    @thirdplacekitten = Swimmer.find_by_id (third.swimmer_id)
    
    erb :'/ev/view_winner'
  end
end

MyApp.get "/eventnotover" do
  erb :'/ev/eventnotover'
end


#method that determines winner, involving "finish" class
#method that gets event title, rank "first second third" 
#name of swimmer, and their swim time

#another that tells you if winners are on the "finished event"
#table which does not exist yet

#DB.define_table("winners")
#DB.define_column("winners","rank_id","integer")
#DB.define_column("winners","finish_id","integer")