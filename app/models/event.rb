class Event < ActiveRecord::Base
  #If there are more than 3 competetors in any event, return an Array of Result objects sorted in ascending order. Otherwise retrun @message.
  def top_three(x)
    #@events = self.find_by_id(x)
    @results = Result.where({"event_id" => x)
    @sorted = @results.order("swimmer_time").to_a 
    @top_three = []
    @message = "This event is not finished yet, be patient!"
    if @sorted.lenght < 3
      return @message
    else    
      3.times do 
        @top_three << @sorted.shift
      end
    end
  return @top_three
  end
end