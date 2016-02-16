#winners controller goes here
#who won!
require 'pry'
MyApp.get "/winners" do
  @events = Event.all
  erb :"/ev/winners"
  #splash page of events
end

MyApp.get "/find_winner/:id" do
  @currentevent = Event.find_by_id(params[:id])
  @x = Finish.where({"event_id" => params[:id]})
  if @currentevent.event_over? == false
    erb :"/ev/eventnotover"
# elsif Winner.exists?(:rank_id => @x.ids)
#  @currentevent = Event.find_by_id(params[:id])
#  erb :"/ev/view_winner"
  else
    erb :"/ev/calculate_winner"
  end
end 

MyApp.post "/calc_winner/:id" do
  @finishes = Finish.finish_array(params[:id])
  @x = Finish.where({"event_id" => params[:id]})
  
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

  @winners = [@one, @two, @three]
  @currentevent = Event.find_by_id(params[:id])
  erb :"/ev/view_winner"
end

MyApp.get "/view_winner/:id" do
  @currentevent = Event.find_by_id(params[:id])
  swimmers = Finish.where({"event_id" => params[:id]})
  @winners = []
  swimmers.each do |swim|
    @winners << Winner.where({"finish_id" => swim.id})
  end
  erb :"/ev/view_winner"
end


MyApp.get "/eventnotover" do
  erb :'/ev/eventnotover'
end

#DB.define_table("winners")
#DB.define_column("winners","rank_id","integer")
#DB.define_column("winners","finish_id","integer")