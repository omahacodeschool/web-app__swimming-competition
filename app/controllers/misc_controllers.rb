# Go to a view that displays a swimmers name, thier university, and the 
#events they are in
MyApp.get "/swimmer_bio/:id" do
  @swimmer = Swimmer.find_by_id(params[:id])
  @result = Result.where({"swimmer_id" => params[:id]})
  erb :"/bios/swimmer_bio"
end

# When an event is clicked, go to a view that shows all the swimmers who competed in that event. 
MyApp.get "/event_bio/:id" do
  @event = Event.find_by_id(params[:id])
  @university = Result.where({"event_id" => params[:id]})
  #binding.pry
  erb :"/bios/event_bio"
end

#Take to view showing list of events. Each event will be a link to a dynamic view that will show the fastes performers in that event. 
MyApp.get "/show_standings" do
  @events = Event.all

  erb :"/display/display_standings"
end

MyApp.get "/top_three/:id" do
  results = Result.where({"event_id" => params[:id]})
  #binding.pry
  @medal_winners = results.top_swimmers
  erb :"/bios/standings"
end

MyApp.get "/lock_event/:id" do
  @l = Event.find_by_id(params[:id])
  if @l.event_locked == false
    @l.event_locked = true
  else
    @l.event_locked = false
  end
  @l.save

  erb :"/display/event_locked"
end











