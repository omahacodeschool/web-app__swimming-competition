# Conference Class goes here

class Conference < ActiveRecord::Base

  def conference_empty?
    colleges = College.where("conference_id" => self.id)
    if colleges == []
      return true
    else
      return false
    end
  end






end