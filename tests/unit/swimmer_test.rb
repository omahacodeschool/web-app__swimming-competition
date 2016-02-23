require 'test_helper'

class SwimmerTest < Minitest::Test
  def setup
    super 


    @team1 = Team.new
    @team1.team = "The Sloths"
    @team1.save

    @team2 = Team.new
    @team2.team = "The Tigers"
    @team2.save


  end


  def test_team_access
    assert_includes()
  end

  def test_team_exist?
    assert_includes(Team.all, @team1)
  end

end