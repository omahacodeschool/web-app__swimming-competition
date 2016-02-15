#winners controller goes here
#who won!
require 'pry'
MyApp.get "/winners" do
  @events = Event.all
  erb :"/ev/winners"
  #splash page of events
end

MyApp.get "/view_winner/:id" do
  @currentevent = Event.find_by_id(params[:id])
  @id = params[:id]
  x = Finish.where({"event_id" => params[:id]})
  @finishes = Finish.finish_array(params[:id])
  first = x.find_by({"finish_time"=> @finishes[0]})
  @firstplacekitten = Swimmer.find_by_id(first)
  second = x.find_by({"finish_time"=> @finishes[1]})
  @secondplacekitten = Swimmer.find_by_id(second)
  third = x.find_by({"finish_time"=> @finishes[2]})
  @thirdplacekitten = Swimmer.find_by_id (third)
  erb :'/ev/view_winner'
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