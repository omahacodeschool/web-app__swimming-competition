#Processes the form for adding an award
MyApp.post "/award_added" do 
  @events = Event.find_by_id(params["event_id"])

  if @events.is_complete
    x = Award.new
    x.event_id = params["event_id"]
    x.competitor_id = params["competitor_id"]
    x.rank = params["rank"]
 #  x.is_valid == true  ---> this is not working
    x.save
    erb :"added/award_added"
  else
    erb :"misc/event_not_over"
  end
end

# Processes the form for adding a college
#
# Throws an error if necessary data missing
MyApp.post "/college_added" do 
  @college = College.new
  @college.college_name = params["college_name"]
  @college.conference_id = params["conference_id"]
  if @college.is_valid == true
    @college.save
    erb :"added/college_added"
  else
    erb :"misc/college_error"
  end
end

# Processes the form for adding a competitor
#
# Throws an error if necessary data missing
MyApp.post "/competitor_added" do 
  @competitor = Competitor.new
  @competitor.competitor_name = params["competitor_name"]
  @competitor.college_id = params["college_id"]
  if @competitor.is_valid == true
    @competitor.save
    erb :"added/competitor_added"
  else
    erb :"misc/competitor_error"
  end
end

# Processes the form for adding a conference
#
# Throws an error if necessary data missing
MyApp.post "/conference_added" do 
  @conference = Conference.new
  @conference.conference_name = params["conference_name"]
  if @conference.is_valid == true
    @conference.save
    erb :"added/conference_added"
  else
    erb :"misc/conference_error"
  end
end

# Processes the form to add an event
#
# Throws an error if necessary data missing
MyApp.post "/event_added" do 
  @event = Event.new
  @event.event_name = params["event_name"]
  @event.locked = false 
  if @event.is_valid == true
    @event.save
    erb :"added/event_added"
  else
    erb :"misc/event_error"
  end
end

#Processes the form to add event details
MyApp.post "/event_detail_added" do 
  @event = Event.find_by_id(params["event_id"])

  if @event.locked == false
    x = EventDetail.new
    x.event_id = params["event_id"]
    x.competitor_id = params["competitor_id"]
    x.finish_time = params["finish_time"]
    x.save
    erb :"added/event_detail_added"
  else
    erb :"misc/event_locked"
  end
end