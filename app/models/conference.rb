class Conference < ActiveRecord::Base
  def conference_delete
    x = self.conference_id
    y = University.where({"conference_id" => x})
    if y.empty? == true
      x.delete
    else
      return
      "There are still Universities in this confrence. Delete them before you can delete this conference."
    end
  end
end