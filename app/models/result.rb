class Result < ActiveRecord::Base
 
  def order_scores
    .order(:"overall").reverse
  end

end

