class Event < ActiveRecord::Base

    def determine_winner(eventid)
    x = Finish.where({"event_id" => eventid})
    arr = x.finish_time
    return arr.sort
    end
end
