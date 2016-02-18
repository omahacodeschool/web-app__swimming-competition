class Rookery < ActiveRecord::Base

  def conference_access
    x = self.conference_id
    y = Conference.find_by_id(x)
    y
  end

  def delete_penguins
    Penguin.where("rookery_id" => self.id).delete_all
  end
end