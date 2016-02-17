class Result < ActiveRecord::Base
  
  #This method returns the top 3 winners a competition
  def top_winners
 #first find all objects where competition_id matches 1
 #loop through each object and do the following
 #add appear + aroma + texture + flavor + heat to receive overall score
 #save overall score to overall column
 #sort overall column by highest to lowest
 #display the first 3 objects.chili_id

  end
end