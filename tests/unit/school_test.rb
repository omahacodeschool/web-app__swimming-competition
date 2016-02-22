require 'test_helper'

class SchoolTest < Minitest::Test
  def setup
      super

      @school1 = School.new
      @school1.name = "Iowa State"
      @school1.save

      @school2 = School.new
      @school2.name = "Wisconsin"
      @swimmer2.save

      @conference1 = Conference.new
      @conference1.name = "East"
      @conference1.save

      @conference2 = Conference.new
      @conference2.name = "West"
      @conference2.save
  end
  def test_conference_name
    assert_includes(@school1.conference_name, @conference1)
    assert_includes(@school2.conference_name, @conference2)
  end
end