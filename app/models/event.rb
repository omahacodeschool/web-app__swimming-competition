class Event < ActiveRecord::Base

    def duplicate_swimmer?
      f = Result.where({"event_id" => e.id})
    x = self.where({})
    duplicate = nil
    self.each do |i|
      if i.swimmer_id == x
        duplicate = true
        break
      else
        duplicate = false
      end
    end
    return duplicate
  end


end