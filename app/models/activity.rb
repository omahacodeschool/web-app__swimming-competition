# Activity Class gets defined here

class Activity < ActiveRecord::Base

    #Checks if all students in an event have a score entered, if any missing 
    #scores returns false, if all have scores returns true

      def event_over?
        missing_score_count = 0
        all_results_for_activity = Result.where({"activity_id" => self.id})
          all_results_for_activity.each do |r|
            if r.student_score == nil
              missing_score_count += 1
            end
          end

          if missing_score_count == 0
            return true
          else
            return false
          end
      end
end