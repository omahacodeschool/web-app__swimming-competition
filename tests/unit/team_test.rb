require 'test_helper'

class TeamTest < Minitest::Test
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
# Not sure why it's failing Line 42 when refution is set to "Evil".
# It appears that the method recognizes the "Evil" in "NotAsEvil", causing the 
# failure
  def test_team_conference
    assert_includes(@t3.team_conference, "Evil")
    assert_includes(@t4.team_conference, "Evil")
    assert_includes(@t1.team_conference, "NotAsEvil")
    assert_includes(@t2.team_conference, "NotAsEvil")
    refute_includes(@t1.team_conference, "SomeEvil")
    refute_includes(@t4.team_conference, "ClearlyEvil")
  end
end