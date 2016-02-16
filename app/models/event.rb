class Event < ActiveRecord::Base
  #If there are more than 3 competetors in any event, return an Array of Result objects sorted in ascending order. Otherwise retrun @message.
  #def top_three(x)
  #   @results = Result.where({"event_id" => x)
  #   @sorted = @results.order("swimmer_time").to_a 
  #   @top_three = []

  #   if @sorted.length < 3
  #     @top_three = []
  #   else    
  #     3.times do 
  #       @top_three << @sorted.shift
  #     end
  #   end
  # return @top_three
  # end
end