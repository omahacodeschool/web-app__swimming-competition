require 'test_helper'

class ConferenceTest < Minitest::Test
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
    @school.conference_id = @conference2.id
    @other_school.save

    @conference3 = Conference.new
    @conference3.name = ""
    @conference3.save
  end

  def test_get_a_conference_schools
    assert_includes(@conference1.schools_members, @school)
    refute_includes(@conference1.schools_members, @other_school)
  end

  def test_set_errors
    assert_includes(@conference3.set_errors, "Conference name cannot be blank")
  end

  def test_get_errors
    @conference3.set_errors
    assert_includes(@conference3.get_errors, "Conference name cannot be blank")
  end

  def test_is_valid
    @conference3.set_errors
    assert_equal(false, @conference3.is_valid)
  end

end