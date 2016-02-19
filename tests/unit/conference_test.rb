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
  end

  def test_get_a_conference_schools
    assert_includes(@conference1.schools_members, @school)
    refute_includes(@conference1.schools_members, @other_school)
  end

end