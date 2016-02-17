class Event < ActiveRecord::Base
  @events = Event.all

  def event_runs
    Run.where({"event_id" => self.id})
  end
#
# Define method that checks if run_complete is True or False.
# If True, allow access to Top 3 page
# Elsif False, deny access to Top 3 page
  def event_complete?
    @events.each do |event|
      if event.event_complete == True

      else 

      end  
    end  
  end

end