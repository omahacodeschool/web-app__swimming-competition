class Swimmer < ActiveRecord::Base
#returns str of name of college
  def swimmer_college_name
    x = self.college_id
    y = College.find_by_id(x)
    return y.college_name
  end
end