#winners controller goes here
#who won!
require 'pry'

MyApp.get "/winners" do
  @events = Event.all
  erb :"/ev/winners"
  #splash page of events
end

MyApp.get "/viewwinners" do
  @currentevent = Event.find_by_id(params[:eventid])
  @f = Finish.this_event(params[:eventid])
  @y = Winner.this_event

  if @currentevent.event_over? == false
    erb :"/ev/eventnotover"
  
  elsif @f & @y != []
    @currentevent = Event.find_by_id(params[:eventid])
    redirect '/view_winner'

  elsif @f & @y == []
    @currentevent = Event.find_by_id(params[:eventid])
    erb :"/ev/calculate_winners"
  end
end

MyApp.post "/calcwinners" do
    @finishes = Finish.finish_array(params[:eventid])
    @x = Finish.where({"event_id" => params[:eventid]})
    
    first = @x.find_by({"finish_time"=> @finishes[0]}) 
    @one = Winner.new
    @one.rank_id = 1
    @one.finish_id = first.id
    @one.save
  
    second = @x.find_by({"finish_time"=> @finishes[1]})
    @two = Winner.new
    @two.rank_id = 2
    @two.finish_id = second.id
    @two.save
  
    third = @x.find_by({"finish_time"=> @finishes[2]})
    @three = Winner.new
    @three.rank_id = 3
    @three.finish_id = third.id
    @three.save

    erb :"/ev/view_winner"
end  


MyApp.get "/view_winner/:id" do
  @currentevent = Event.find_by_id(params[:id])
  @finishes = Finish.this_event(params[:id])
  @winners = []
  @finishes.each do |swim|
    @winners << Winner.where({"finish_id" => swim})
  end
  erb :"/ev/view_winner"
end


MyApp.get "/eventnotover" do
  erb :'/ev/eventnotover'
end

#DB.define_table("winners")
#DB.define_column("winners","rank_id","integer")
#DB.define_column("winners","finish_id","integer")