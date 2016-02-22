require 'test_helper'

class TeamTest < Minitest::Test
  def setup
    super

    
  end


end

# Methods to test yet
  def team_conference
    x = self.conference_id
    y = Conference.find_by_id(x)
    
    return y.conference_name
  end