require 'test_helper'

class EventTest < Minitest::Test
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

    @cat4 = Competitor.new
    @cat4.first_name = "Baby"
    @cat4.last_name = "Boy"
    @cat4.school_id = @other_school.id
    @cat4.save

    @cat5 = Competitor.new
    @cat5.first_name = "Gracey"
    @cat5.last_name = "Facey"
    @cat5.school_id = @school.id
    @cat5.save

    @event1 =  Event.new
    @event1.save

    @event2 =  Event.new
    @event2.save

    @event3 =  Event.new
    @event3.save

    @result_1 = Result.new
    @result_1.event_id = @event1.id
    @result_1.competitor_id = @cat.id
    @result_1.time = 10
    @result_1.save

    @result_2 = Result.new
    @result_2.event_id = @event1.id
    @result_2.competitor_id = @cat3.id
    @result_2.time = 12
    @result_2.save

    @result_3 = Result.new
    @result_3.event_id = @event3.id
    @result_3.competitor_id = @cat2.id
    @result_3.save

    @result_4 = Result.new
    @result_4.event_id = @event1.id
    @result_4.competitor_id = @cat4.id
    @result_4.time = 9
    @result_4.save

    @result_5 = Result.new
    @result_5.event_id = @event1.id
    @result_5.competitor_id = @cat2.id
    @result_5.time = 11
    @result_5.save
  end

  def test_list_of_results
    assert_includes(@event1.list_of_results, @cat)
    assert_includes(@event1.list_of_results, @cat2)
    assert_includes(@event1.list_of_results, @cat3)
    assert_includes(@event1.list_of_results, @cat4)
    refute_includes(@event1.list_of_results, @cat5)
  end

  def test_list_of_results_is_nil
    assert_nil(@event2.list_of_results)
  end

  def test_delete_result_info
    @event1.delete_result_info
    assert_nil(@event1.list_of_results)
  end

  def test_top_three
    assert_includes(@event1.top_three, @result_1)
    assert_includes(@event1.top_three, @result_4)
    assert_includes(@event1.top_three, @result_5)
    refute_includes(@event1.top_three, @result_2)
    refute_includes(@event1.top_three, @result_3)
  end

  def test_results_for_event
    assert_includes(@event1.results_for_event, @result_1)
    assert_includes(@event1.results_for_event, @result_2)
    assert_includes(@event1.results_for_event, @result_4)
    assert_includes(@event1.results_for_event, @result_5)
    refute_includes(@event1.results_for_event, @result_3)
  end

  def test_if_results_do_not_have_time
    assert_nil(@event3.top_three)
  end
end