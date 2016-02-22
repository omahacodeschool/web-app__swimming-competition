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
    @butterfly.event_name = "butterfly"
    @butterfly.save

    @r1 = Run.new
    @r1.event_id = @freestyle.id
    @r1.save

    @r7 = Run.new
    @r7.event_id = @backstroke.id
    @r7.save

    @r11 = Run.new
    @r11.event_id = @breaststroke.id
    @r11.save

    @r16 = Run.new
    @r16.event_id = @butterfly.id
    @r16.save
  end

  def test_event_runs
    assert_includes(@freestyle.runs, @r1)
    assert_includes(@backstroke.runs, @r7)
    assert_includes(@breaststroke.runs, @r11)
    assert_includes(@butterfly.runs, @r16)
    refute_includes(@freestyle.runs, @r7)
    refute_includes(@backstroke.runs, @r1)
  end
end

# Methods yet to test
  # def event_runs
  #   Run.where({"event_id" => self.id})
  # end

  # def event_top_runs
  #   qualifier = Run.where({"event_id" => self.id})

  #   x = qualifier.order(:run_time)
  #   x[0..2]
  # end