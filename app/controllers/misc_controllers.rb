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
  erb :"/bios/event_bio"
end

#Trying to make a link from event bio to take users to swimmer's bio, not perfect. For some reason it confuses the swimmer id and dispalays the wrong bio.
# MyApp.get "/event_bio/swimmer_bio/:id" do
#   @swimmer = Swimmer.find_by_id(params[:id])
#   @result = Result.where({"swimmer_id" => params[:id]})
#   erb :"/bios/swimmer_bio"
# end

#Take to view showing list of events. Each event will be a link to a dynamic view that will show the fastes performers in that event. 
MyApp.get "/show_standings" do
  @events = Event.all

  erb :"/display/display_standings"
end

MyApp.get "/top_three/:id" do
  @events = Event.find_by_id(params[:id])
  @results = Result.where({"event_id" => params[:id]})
  # @sorted = @results.sort_by do |t|
  #   t[t.swimmer_time]
  #end
#binding.pry

  erb :"/bios/standings"
end










