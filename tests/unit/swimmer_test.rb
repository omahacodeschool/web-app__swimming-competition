require 'test_helper'

class SwimmerTest < Minitest::Test
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
    @t1.conference_id = 2
    @t1.save

    @t2 = Team.new
    @t2.team_name = "Best Friends League"
    @t2.conference_id = 2
    @t2.save

    @t3 = Team.new
    @t3.team_name = "Axis of Evil"
    @t3.conference_id = 1
    @t3.save

    @t4 = Team.new
    @t4.team_name = "The Wet Bandits"
    @t4.conference_id = 1
    @t4.save

    @chris = Swimmer.new
    @chris.swimmer_name = "Chris Foral"
    @chris.team_id = 1
    @chris.save

    @champ = Swimmer.new
    @champ.swimmer_name = "Champ C"
    @champ.team_id = 4
    @champ.save

    @nick = Swimmer.new
    @nick.swimmer_name = "Nick D"
    @nick.team_id = 2
    @nick.save

    @joe = Swimmer.new
    @joe.swimmer_name = "Joe O"
    @joe.team_id = 3
    @joe.save
  end

  def test_swimmer_team
    assert_includes(@chris.swimmer_team, "Omaha Code School")
    assert_includes(@champ.swimmer_team, "The Wet Bandits")
    assert_includes(@nick.swimmer_team, "Best Friends League")
    assert_includes(@joe.swimmer_team, "Axis of Evil")
    refute_includes(@chris.swimmer_team, "The Wet Bandits")
    refute_includes(@champ.swimmer_team, "Axis of Evil")
  end

  def test_swimmer_conference
    assert_includes(@chris.swimmer_conference, "NotAsEvil")
    assert_includes(@champ.swimmer_conference, "Evil")
    assert_includes(@nick.swimmer_conference, "NotAsEvil")
    assert_includes(@joe.swimmer_conference, "Evil")
    refute_includes(@chris.swimmer_conference, "Live")
    refute_includes(@champ.swimmer_conference, "NotAsEvil")    
  end
end
#
# TESTS BEHAVING ERRATICALLY
#