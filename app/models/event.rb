class Event < ActiveRecord::Base
  @events = Event.all

  # The first part returns an array of all runs of each event ID in the Run class.
  # Goal: get all swimmers and their times for the run of each event
  # 
  #def added_event_runs
  #  swimmer_id_arr = []
  #  swimmer_run_time_arr = []
  #  event_runs_arr = Run.where({"event_id" => self.id})

  #  if event_runs.empty?
  #    nil
  #  else
      
  #    event_runs_arr.each do |event_run|
  #      swimmer_id_arr << event_run.swimmer_id
  #    end
  #  end
  #end

end