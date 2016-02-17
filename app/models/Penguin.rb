class Penguin < ActiveRecord::Base

  def rookery_access
    x = self.rookery_id
    y = Rookery.find_by_id(x)
    y
  end

  def event_access
    x = self.event_id
    y = Event.find_by_id(x)
    y
  end

  def delete_results
    Result.where("penguin_id" => self.id).delete_all
  end

end