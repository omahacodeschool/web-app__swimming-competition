class Result < ActiveRecord::Base

  #This method returns the top 3 winners in a competition
  #first find all objects where competition_id matches 1
  #loop through each object and do the following
  #add appear + aroma + texture + flavor + heat to receive overall score
  #save overall score to overall column
  #sort overall column by highest to lowest
  #display the first 3 objects.chili_id
  def top_winners
    scores = {}

    a.each do |x,y|
      scores[x.chili_id] = y.overall
    end
    return scores
  end
end