class Result < ActiveRecord::Base
 
  def order_scores(x)
    @os = x.order(:"overall").reverse
  end
  
end

