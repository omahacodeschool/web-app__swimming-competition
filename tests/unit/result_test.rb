require 'test_helper'

class ResultTest < Minitest::Test
  def setup
    super
    
    @conference_1 = Conference.new
    @conference_1.conference = "Upper"
    @conference_1.save

    @conference_2 = Conference.new
    @conference_2.conference = "Middle"
    @conference_2.save

    @conference_3 = Conference.new
    @conference_3.conference = "Lower"
    @conference_3.save

    @school_1 = School.new
    @school_1.school = "Baxter"
    @school_1.conference_id = @conference_1.id
    @school_1.save

    @school_2 = School.new
    @school_2.school = "Triskelion"
    @school_2.conference_id = @conference_2.id
    @school_2.save

    @school_3 = School.new
    @school_3.school = "Xavier Academy"
    @school_3.conference_id = @conference_3.id
    @school_3.save

    @competitor_1 = Competitor.new
    @competitor_1.first_name = "Ben"
    @competitor_1.last_name = "Grimm"
    @competitor_1.school_id = @school_1.id
    @competitor_1.save

    @competitor_2 = Competitor.new
    @competitor_2.first_name = "Susan"
    @competitor_2.last_name = "Storm"
    @competitor_2.school_id = @school_2.id
    @competitor_2.save

    @competitor_3 = Competitor.new
    @competitor_3.first_name = "Reed"
    @competitor_3.last_name = "Richards"
    @competitor_3.school_id = @school_3.id
    @competitor_3.save

    @event_1 = Event.new
    @event_1.event = "walking"
    @event_1.locked = nil
    @event_1.save

    @event_2 = Event.new
    @event_2.event = "jogging"
    @event_2.locked = nil
    @event_2.save

    @event_3 = Event.new
    @event_3.event = "running"
    @event_3.locked = true
    @event_3.save

    @result_1 = Result.new
    @result_1.event_id = @event_1.id
    @result_1.competitor_id = @competitor_1.id
    @result_1.time = 1
    @result_1.save

    @result_2 = Result.new
    @result_2.event_id = @event_2.id
    @result_2.competitor_id = @competitor_2.id
    @result_2.time = 2
    @result_2.save

    @result_3 = Result.new
    @result_3.event_id = @event_3.id
    @result_3.competitor_id = @competitor_3.id
    @result_3.time = 3
    @result_3.save

  end

  def test_competitor_name
    assert_includes(@result_1.competitor_name, "Ben Grimm")
    assert_includes(@result_2.competitor_name, "Susan Storm")
    assert_includes(@result_3.competitor_name, "Reed Richards")
    refute_includes(@result_1.competitor_name, "Reed Richards")
  end

  def test_event_name
    assert_equal(@result_1.event_name, "walking")
    assert_equal(@result_2.event_name, "jogging")
    assert_equal(@result_3.event_name, "running")
    refute_equal(@result_1.event_name, "running")
  end

  def test_event_locked
    assert_equal(@result_1.event_locked, nil)
    assert_equal(@result_2.event_locked, nil)
    assert_equal(@result_3.event_locked, true)
  end

end