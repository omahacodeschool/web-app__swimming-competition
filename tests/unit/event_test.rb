require 'test_helper'

class EventTest < Minitest::Test
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

    @r1 = Run.new
    @r1.event_id = @freestyle.id
    @r1.run_time = 1
    @r1.save

    @r7 = Run.new
    @r7.event_id = @backstroke.id
    @r7.run_time = 2
    @r7.save

    @r11 = Run.new
    @r11.event_id = @breaststroke.id
    @r11.run_time = 3
    @r11.save

    @r16 = Run.new
    @r16.event_id = @butterfly.id
    @r16.run_time = 4
    @r16.save
  end

  def test_event_runs
    assert_includes(@freestyle.event_runs, @r1)
    assert_includes(@backstroke.event_runs, @r7)
    assert_includes(@breaststroke.event_runs, @r11)
    assert_includes(@butterfly.event_runs, @r16)
    refute_includes(@freestyle.event_runs, @r7)
    refute_includes(@backstroke.event_runs, @r1)
  end

  def test_event_top_runs
    assert_includes(@freestyle.event_top_runs, @r1)
    assert_includes(@backstroke.event_top_runs, @r7)
    assert_includes(@breaststroke.event_top_runs, @r11)
    assert_includes(@butterfly.event_top_runs, @r16)
    refute_includes(@freestyle.event_top_runs, @r7)
    refute_includes(@backstroke.event_top_runs, @r1)
  end
end