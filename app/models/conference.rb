class Conference < ActiveRecord::Base
  # def conference_delete(i)
  #   x = self.find_by_id(i)
  #   y = University.where({"conference_id" => x})
  #   if y.empty? == true
  #     x.delete
  #   else
  #     return
  #     "There are still Universities in this confrence. Delete them before you can delete this conference."
  #   end
  #   binding.pry
  # end
end