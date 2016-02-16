class Event < ActiveRecord::Base

  def swimmers
    x = SignupResult.where({"event_id" => self.id})
    swimmers = []
    x.each do |y|
      swimmers << y.swimmer_info_id
    end

    SwimmerInfo.where({"id" => swimmers})
  end

    # This event's id is self.id
    # Find all rows in the sign_up_results table where the event_id = this event's id.
    # Collect all of those rows' values for swimmer_info_id
    # Now you have an array of swimmer_info_id values. You want all of the swimmers with those IDs.
    # So find all rows in the swimmer_infos table where the id = one of the
    # values in the swimmer_info_id array
  #end
end

