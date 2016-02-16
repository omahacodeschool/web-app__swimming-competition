class Result < ActiveRecord::Base

  # Returns the name of the competition in the Competitions Table based on the competition_id field in the Results table
  def competition_name
    # a = self.competition_id
    # obj = Competition.find_by_id(a)
    # obj.name
  end

  # Returns the name of the chili in the Chilis Table based on the chili id field in the results table
  def chili_name
    
  end

  # Returns the name of the first_name
  # start from chili id in results table
  # get contestant id in the chili table
  # get first_name in contestant table
  def contestant_first_name
    
  end

  # Returns the name of the last name
  # start from chili id in results table
  #get contestant id in the chili table
  # get last_name in the contestant table
  def contestant_last_name
  end
end