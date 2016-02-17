class Conference < ActiveRecord::Base

  def del_conference_check
    
    if 
      Team.all.each do |team|
        team.conference_id.any?
      end
    else
      @conference.delete
    end

  end
end