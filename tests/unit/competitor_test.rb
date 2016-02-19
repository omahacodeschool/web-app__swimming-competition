require 'test_helper'

class CompetitorTest < Minitest::Test
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
    @event1.save

    @event2 =  Event.new
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
  end

  def test_get_a_competitors_school
    assert_includes(@cat.school_name, @school.name)
    refute_includes(@cat.school_name, @other_school.name)
  end

  def test_get_a_competitors_event_entry
    assert_includes(@cat.event_entry, @event1)
    assert_includes(@cat.event_entry, @event2)
    refute_includes(@cat.event_entry, @event3)
  end

    def test_is_a_competitors_event_entry_empty
    assert_includes(@cat3.event_entry, nil)
  end

  def test_delete_competitor_info
  end
end