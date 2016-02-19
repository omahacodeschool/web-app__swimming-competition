require 'test_helper'

class ConferenceTest < Minitest::Test
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

    @conference_4 = Conference.new
    @conference_4.conference = "Nonexistent"
    @conference_4.save

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

  end

  def test_schools
    assert_includes(@conference_1.schools, @school_1)
    assert_includes(@conference_2.schools, @school_2)
    assert_includes(@conference_3.schools, @school_3)
    refute_includes(@conference_1.schools, @school_3)
  end

  def test_has_schools
    assert_equal(@conference_1.has_schools, true)
    assert_equal(@conference_2.has_schools, true)
    assert_equal(@conference_3.has_schools, true)
    assert_equal(@conference_4.has_schools, false)
  end

end