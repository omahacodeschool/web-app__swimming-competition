require 'test_helper'

class RunTest < Minitest::Test
  def setup
    super

    @freestyle = Event.new
    @freestyle.event_name = "Freestyle"
    @freestyle.save

    @backstroke = Event.new
    @backstroke.event_name = "Backstroke"
    @backstroke.save

    @breaststroke = Event.new
    @breaststroke.event_name = "Breaststroke"
    @breaststroke.save

    @butterfly = Event.new
    @butterfly.event_name = "Butterfly"
    @butterfly.save

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

    @r1 = Run.new
    @r1.event_id = @freestyle.id
    @r1.swimmer_id = 1
    @r1.save

    @r7 = Run.new
    @r7.event_id = @backstroke.id
    @r2.swimmer_id = 2
    @r7.save

    @r11 = Run.new
    @r11.event_id = @breaststroke.id
    @r3.swimmer_id = 3
    @r11.save

    @r16 = Run.new
    @r16.event_id = @butterfly.id
    @r4.swimmer_id = 4
    @r16.save
  end

  def test_run_swimmer
    assert_includes(@r1.run_swimmer, "Chris Foral")
    assert_includes(@r7.run_swimmer, "Champ C")
    assert_includes(@r11.run_swimmer, "Nick D")
    assert_includes(@r16.run_swimmer, "Joe O")
    refute_includes(@r1.run_swimmer, "Joe O")
    refute_includes(@r7.run_swimmer, "Nick D")
  end

  def test_run_event
    assert_includes(@r1.run_event, "Freestyle")
    assert_includes(@r7.run_event, "Backstroke")
    assert_includes(@r11.run_event, "Breaststroke")
    assert_includes(@r16.run_event, "Butterfly")
    refute_includes(@r1.run_event, "Butterfly")
    refute_includes(@r7.run_event, "Breaststroke")    
  end
end