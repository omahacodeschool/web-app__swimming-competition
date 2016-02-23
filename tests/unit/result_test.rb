require 'test_helper'

class ResultTest < Minitest::Test
 def setup
    super
    @school = School.new
    @school.name = "Dodge"
    @school.save

    @other_school = School.new
    @other_school.name = "Blondo"
    @other_school.save

    @cat = Competitor.new
    @cat.first_name = "Gita"
    @cat.last_name = "Jain"
    @cat.school_id = @school.id
    @cat.save

    @cat2 = Competitor.new
    @cat2.first_name = "Clementine"
    @cat2.last_name = "Haubert"
    @cat2.school_id = @other_school.id
    @cat2.save

    @cat3 = Competitor.new
    @cat3.first_name = "XiaoGui"
    @cat3.last_name = "Haubert"
    @cat3.school_id = @other_school.id
    @cat3.save

    @event1 =  Event.new
    @event1.name = "Hurdles"
    @event1.save

    @event2 =  Event.new
    @event2.name = "Box Jumping"
    @event2.save

    @event3 =  Event.new
    @event3.save

    @result_1 = Result.new
    @result_1.event_id = @event1.id
    @result_1.competitor_id = @cat.id
    @result_1.save

    @result_2 = Result.new
    @result_2.event_id = @event2.id
    @result_2.competitor_id = @cat.id
    @result_2.save

    @result_3 = Result.new
    @result_3.event_id = @event3.id
    @result_3.competitor_id = @cat2.id
    @result_3.save

    @result_4 = Result.new
    @result_4.time = ""
    @result_4.save
  end

  def test_name_of_competitor
    assert_includes(@result_1.name_of_competitor, @cat.first_name + " " + @cat.last_name)
    refute_includes(@result_1.name_of_competitor, @cat2.first_name + " " + @cat2.last_name)
  end

  def test_name_of_event
    assert_includes(@result_1.name_of_event, @event1.name)
    refute_includes(@result_1.name_of_event, @event2.name)
  end

  def test_set_errors
    assert_includes(@result_4.set_errors, "You must add a time")
  end

  def test_get_errors
    @result_4.set_errors
    assert_includes(@result_4.get_errors, "You must add a time")
  end

  def test_is_not_valid
    @result_4.set_errors
    assert_equal(false, @result_4.is_valid)
  end

  def test_is_valid
    @result_1.time = 45
    @result_1.save
    @result_1.set_errors
    assert_equal(true, @result_1.is_valid)
  end

end