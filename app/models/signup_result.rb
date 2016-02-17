class SignupResult < ActiveRecord::Base

  def swimmer_name
    x = swimmer_info_id
    y = SwimmerInfo.find_by_id(x)
    z = y.first_name + " " + y.last_name
    return z
  end

  def event_name
    x = event_id
    y = Event.find_by_id(x)
    z = y.event_name
    return z
  end

  def swimmer_exist?
    x = swimmer_info_id
    y = SwimmerInfo.find_by_id(x)
    if y != nil
      return true
    else
      return false
    end
  end


end