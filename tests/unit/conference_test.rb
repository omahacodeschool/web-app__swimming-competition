require 'test_helper'

class ConferenceTest < Minitest::Test
  def setup
    super

    @evil = Conference.new
    @evil.conference_name = "Evil"
    @evil.save

    @notasevil = Conference.new
    @notasevil.conference_name = "NotAsEvil"
    @notasevil.save

    @t1 = Team.new
    @t1.team_name = "Omaha Code School"
    @t1.conference_id = @notasevil.id
    @t1.save

    @t2 = Team.new
    @t2.team_name = "Best Friends League"
    @t2.conference_id = @notasevil.id
    @t2.save


    @t3 = Team.new
    @t3.team_name = "Axis of Evil"
    @t3.conference_id = @evil.id
    @t3.save

    @t4 = Team.new
    @t4.team_name = "The Wet Bandits"
    @t4.conference_id = @evil.id
    @t4.save
  end

  def test_team_conference
    assert_includes(@evil.teams, @t3)
    assert_includes(@evil.teams, @t4)
    assert_includes(@notasevil.teams, @t1)
    assert_includes(@notasevil.teams, @t2)
    refute_includes(@evil.teams, @t1)
    refute_includes(@notasevil.teams, @t4)
  end
end
  
# Methods yet to test
  # def del_conference_check
    
  #   if self.teams.any?
  #     false
  #   else
  #     self.delete
  #   end

  # end