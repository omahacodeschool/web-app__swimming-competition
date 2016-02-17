class Conference < ActiveRecord::Base
  def has_a_rookery?
    x = Rookery.where("conference_id" => self.id).first
      if x != nil
        true
      else 
        false
      end
  end
  
end