class Run < ActiveRecord::Base
  @runs = Run.all

  # Within the variable x, store all Event IDs. Then iterate through each row of the runs tabls, collecting the rows where the Event IDs match in the event_runs_arr Array.
  def event_runs
    x = Event.ids
    event_runs_arr = []
    
    x.each do |event_id|
      event_runs_arr << Run.where({"event_id" => event_id})
    end
    return event_runs_arr
  end

  def run_swimmer
    a = self.swimmer_id
    b = Swimmer.find_by_id(a)

    return b.swimmer_name
  end

  def run_event
    a = self.event_id
    b = Event.find_by_id(a)

    return b.event_name
  end
end

# I have collected all of the pertinent information (events, conferences, teams, swimmers, runs)
# On the 'add page' for each piece I have tables listing the additions and some adjoining information.
# Per the assignment, I need to list all competitors for at least one event, identified by its ID.
# As my schema is defined, I have my runs table including the columns:
#
# | id | event_id | swimmer_id | swimmer_event_time |
#
# As events are added, the same event_id will be logged for multiple swimmer_id's each with unique swimmer_event_times.
# The runs table primary key (id column) will iterate up 1 for each entry
# Now I must figure out how to extract the run information for each event type
# That would be like saying: 
# 1. runs table, give me each row where all of the event_id's match
#
# From my event model:
# event_runs_arr = Run.where({"event_id" => self.id})
#
# 2. For these rows with matching event_id's, separate them from the others
# 3. Then look in each of those containers and create a table headed by the the event name connected to the event_id and each row being the swimmer name connected to the swimmer_id
#
# I don't know if I need to create a method in this model or in the events model. I'm not sure what operations grab which data. I
