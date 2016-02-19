require 'test_helper'

class SchoolTest < Minitest::Test
  def setup
    super

    @malcolm_high = School.new
    @malcolm_high.school_name = "Malcolm"
    @malcolm_high.save

    @east = Conference.new
    @east.conference_name = "East"
    @east.save

    @yo = Competitor.new
    @yo.school_name = @malcolm_high.school_name
    @yo.conference_name = @east.conference_name
    @yo.save

  end

  def test_display_conference_of_school
    assert_equal(@malcolm_high.display_conference_of_school, "East")
  end
end