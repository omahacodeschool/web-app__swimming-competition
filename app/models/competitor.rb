class Competitor < ActiveRecord::Base
  has_many :results
  #RETURNS College Object based on foreign key in Competitor Table

  def get_college
    x = self.college_id
    y = College.find_by_id(x)
    return y ? y : nil
  end

  def get_college_name
    x = self.college_id
    y = College.find_by_id(x)
    return y ? y.name : nil
  end

  def set_college_name(var)
    x = self.college_id
    y = College.find_by_id(x)
    y.name = var
  end

 def get_conference_name
    x = self.college_id
    y = College.find_by_id(x)
    z = y ? y.conference_id : nil
    if z != nil
      zz = Conference.find_by_id(z)
      return zz ? zz.name : nil
    end
 end

def get_competitor_results
  y = Result.where({competitor_id => self.id})
  return y ? y : nil
end


def delete_all_competitor_results
  Result.where("competitor_id" => self.id).delete_all
end

  def competitor_already_exists_prompt
    return "It appears this Competitor might already exist in the database.\r\n
     To continue creating the record, please confirm and click 'Add New Competitor.'"
  end

end