class Event < ActiveRecord::Base
  @events = Event.all

  def is_valid
    if self.event_name == "" || self.event_best_time == nil
      false
    else
      true
    end    
  end

  def event_runs
    Run.where({"event_id" => self.id})
  end

  def event_top_runs
    qualifier = Run.where({"event_id" => self.id})

    x = qualifier.order(:run_time)
    x[0..2]
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

    @events.each do |event|
      if event.event_complete
# Maybe return a keyword that talks to the link on the view page telling it to
# reveal the link?
      else

      end  
    end  
  end

end