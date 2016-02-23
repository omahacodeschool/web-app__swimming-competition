require 'test_helper'

class SchoolTest < Minitest::Test
 def setup
    super

    @conference1 = Conference.new
    @conference1.name = "North"
    @conference1.save

    @conference2 = Conference.new
    @conference2.name = "South"
    @conference2.save

    @school = School.new
    @school.name = "Dodge"
    @school.conference_id = @conference1.id
    @school.save

    @other_school = School.new
    @other_school.name = "Blondo"
    @other_school.conference_id = @conference2.id
    @other_school.save

    @cat = Competitor.new
    @cat.first_name = "Gita"
    @cat.last_name = "Jain"
    @cat.school_id = @school.id
    @cat.save

    @cat2 = Competitor.new
    @cat2.first_name = "Clementine"
    @cat2.last_name = "Haubert"
    @cat2.school_id = @school.id
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

    @school2 = School.new
    @school2.name = ""
    @school2.conference_id = nil
    @school.save
  end

  def test_conference_name
    assert_includes(@school.conference_name, @conference1.name)
    refute_includes(@school.conference_name, @conference2.name)
  end

  def test_school_members
    assert_includes(@school.school_members, @cat)
    assert_includes(@school.school_members, @cat2)
    refute_includes(@school.school_members, @cat3)
  end

  def test_delete_school_info
    @school.delete_school_info
    assert_nil(@school.school_members)
  end

  def test_set_errors
    assert_includes(@school2.set_errors, "School name cannot be blank")
    assert_includes(@school2.set_errors, "You must choose a conference for this school")
  end

  def test_get_errors
    @school2.set_errors
    assert_includes(@school2.get_errors, "School name cannot be blank")
    assert_includes(@school2.get_errors, "You must choose a conference for this school")
  end

  def test_is_valid
    @school2.set_errors
    assert_equal(false, @school2.is_valid)
  end
end