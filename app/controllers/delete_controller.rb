# Processes deletion of an award  #DOESN'T WORK
MyApp.get "/delete_award" do 
  @events = Event.all
  @competitors = Competitor.all 
  @awards = Award.all
  
  erb :"delete/delete_award"
end

# Processes deletion of a college plus any applicable competitors and their event details and awards
MyApp.get "/delete_college/:b" do 
  @colleges = College.find_by_id(params[:b]) 
  @this_colleges_competitors = Competitor.where({"college_id" => params[:b]})
  
  @event_detail_competitor_ids = [] # empty array for competitor_id's
  @this_colleges_competitors.each do |x|  # competitors of a particular college
    @event_detail_competitor_ids << x.id  # puts all of particular college's competitor_id's in array
  end
  @event_details_to_delete = EventDetail.where({"competitor_id" => @event_detail_competitor_ids})# details to delete are ones where ids match
  @event_details_to_delete.delete_all # go ahead and delete them
  
  @award_competitor_ids = [] 
  @this_colleges_competitors.each do |x|
    @award_competitor_ids << x.id
  end
  @awards_to_delete = Award.where({"competitor_id" => @award_competitor_ids})
  @awards_to_delete.delete_all
  
  @this_colleges_competitors.delete_all 
  
  @colleges.delete 

  erb :"delete/delete_college"
end

# Processes deletion of a competitor plus any related event or award data
MyApp.get "/delete_competitor/:b" do 
  @competitors = Competitor.find_by_id(params[:b]) 
  @this_competitor_event_details = EventDetail.where({"competitor_id" => params[:b]})
  @this_competitor_event_details.delete_all
  @this_competitor_awards = Award.where({"competitor_id" => params[:b]})
  @this_competitor_awards.delete_all
  @competitors.delete

  erb :"delete/delete_competitor"
end

# Processes deletion of a conference if no colleges tied to it
#
# Otherwise instructs user to delete college first
MyApp.get "/delete_conference/:b" do 
  @conferences = Conference.find_by_id(params[:b]) 
  x = College.where({"conference_id" => params[:b]})
  if x.length == 0 
    @conferences.delete
    
    erb :"delete/delete_conference"
  else

    erb :"misc/cannot_delete_conference"
  end
end

# Processes deletion of an event
MyApp.get "/delete_event/:b" do 
  @event = Event.find_by_id(params[:b])
  if @event.locked == true

    erb :"misc/event_locked"
  else  
    @event.delete

  erb :"delete/delete_event"
  end
end