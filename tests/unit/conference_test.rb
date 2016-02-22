require 'test_helper'

class ConferenceTest < Minitest::Test  
  def setup
    super
    @west = Conference.new
    @west.conference_name = "West"
    @west.save

    @east = Conference.new
    @east.conference_name = "East"
    @east.save

    @c1 = College.new
    @c1.college_name = "University of Colorado"
    @c1.conference_id = @west.id 
    @c1.save

    @c2 = College.new
    @c2.college_name = "University of New Mexico"
    @c2.conference_id = @west.id
    @c2.save

    @c3 = College.new
    @c3.college_name = "University of Illinois"
    @c3.conference_id = @east.id
    @c3.save

    @c3 = College.new
    @c3.college_name = "University of Iowa"
    @c3.conference_id = @east.id
    @c3.save
  end

  def test_check_conferences_colleges
    assert_includes(@west.conf_colleges, @c1)
    assert_includes(@west.conf_colleges, @c2)
    refute_includes(@west.conf_colleges, @c3)
    refute_includes(@west.conf_colleges, @c4)
  end
end