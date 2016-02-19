require 'test_helper'

class CompetitorTest < Minitest::Test
  def setup
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


  end

  def test_get_a_competitors_school
    assert_includes(@cat.school_name, @school.name)
    refute_includes(@cat.school_name, @other_school.name)
  end
end