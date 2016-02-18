class Result < ActiveRecord::Base
has_one :competitor

  def get_competitor
    x = self.competitor_id
    return Competitor.find_by_id(x)
  end

    def get_competitor_name
    x = self.competitor_id
    y =  Competitor.find_by_id(x)
    return y ? y.name : nil
  end

  def get_college
    x = self.competitor_id
    y = Competitor.find_by_id(x)
    return College.find_by_id(y)
  end

  def get_competitor_college_name
    x = self.competitor_id
    y = Competitor.find_by_id(x)
    z = College.find_by_id(y)
    return z ? z.name : nil
  end

  def get_conference
    x = self.competitor_id
    y = Competitor.find_by_id(x)
    z = y.college_id
    a = College.find_by_id(z)
    return Conference.find_by_id(a) 
  end

  def get_conference_name
    x = self.competitor_id
    y = Competitor.find_by_id(x)
    if y != nil
      z = y.college_id
      if z != nil
        a = College.find_by_id(z)
        b = a.conference_id
        if b != nil
          c = Conference.find_by_id(b)
          return c ? c.name : nil 
        else
          return nil
        end
      else
        return nil
      end
    else
      return nil
    end
  end

  def set_conference_name(var)
    x = self.competitor_id
    y = Competitor.find_by_id(x)
    z = y.college_id
    a = College.find_by_id(z)
    b = Conference.find_by_id(a)
    b.name = var
  end
  
  def get_conference_id
    x = self.competitor_id
    y = Competitor.find_by_id(x)
    z = y.college_id
    a = College.find_by_id(z)
    b = Conference.find_by_id(a)
    return b.id 
  end

  def activity
    x = self.activity_id
    return Activity.find_by_id(x)
  end

  def get_activity_name
    x = self.activity_id
    y =  Activity.find_by_id(x)
    return y.name
  end

    def get_activity_max_score
    x = self.activity_id
    y =  Activity.find_by_id(x)
    return y ? y.max_score : nil
  end

  def set_activity_name(var)
    x = self.activity_id
    y =  Activity.find_by_id(x)
    y.name = var
  end

  def get_activity_name
    x = self.activity_id
    y =  Activity.find_by_id(x)
    return y ? y.name : nil
  end

  def get_activity_locked?
    x = self.activity_id
    y =  Activity.find_by_id(x)
    return y.locked == false ? false : true
  end

  def get_activity_locked_status
    x = self.activity_id
    y =  Activity.find_by_id(x)
    if y != nil
      return y.locked == true ? "Closed" : "Open"
    else 
      return nil
    end
  end

end