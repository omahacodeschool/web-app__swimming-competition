class Event < ActiveRecord::Base
  @events = Event.all

  def event_runs
    Run.where({"event_id" => self.id})
  end
#
# Define method that checks if event_complete is True or False for each event.
# If True:
#   1. Reveal dynamic link to dynamic Top 3 page
#   2. Create condition in which the event is locked which disables the update
#      buttons for that event
# Elsif False:
#   1. Keep link hidden
#   2. Allow event run to be edited
  def event_complete?
    @events = Event.all
    @top_event_link = ''

    @events.each do |event|
      if event.event_complete == True
# Maybe return a keyword that talks to the link on the view page telling it to
# reveal the link?
      @top_event_link = '<a href="/event_top_runs/<%= e.id %>">Go To Top 3</a>'
      else 

      end  
    end  
  end

end