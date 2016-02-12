require "pry"

MyApp.get "/events" do
  @events = Event.all
  erb :"main/events"
end

MyApp.get "/event_added" do
  x = Event.new
  x.gender = params[:gender]
  x.distance = params[:race_distance]
  x.style_id = params[:style_id]
  x.save
  erb :"main/event_added"
end

MyApp.get "/competitors_in_event/:blah" do
  @juggalos = []
  @event_object = Event.find_by_id(params[:blah])
  @array_of_results = @event_object.display_all_competitors_in_event
  @array_of_results.each do |a|
    @juggalos << a.competitor_id
  end
  erb :"main/competitors_by_event_result"
end