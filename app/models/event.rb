class Event < ActiveRecord::Base

  #def swimmers

    #s = []
    #x = Event.self.id
    #y = SignupResult.find_by_id(x)
    #z << y.swimmer_info_id
    #binding.pry


    # This event's id is self.id
    # Find all rows in the sign_up_results table where the event_id = this event's id.
    # Collect all of those rows' values for swimmer_info_id
    # Now you have an array of swimmer_info_id values. You want all of the swimmers with those IDs.
    # So find all rows in the swimmer_infos table where the id = one of the
    # values in the swimmer_info_id array
  #end
end

