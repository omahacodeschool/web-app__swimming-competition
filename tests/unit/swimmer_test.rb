require 'test_helper'

class SwimmerTest < Minitest::Test
  def setup
    super
    

    @banana = "delicious"

    # @swimmer = Swimmer.new
    # @swimmer.swimmer_name = "David"
    # @swimmer.save

    # @school = School.new
    # @school.school_name = "OCS"
    # @school.save

    

  end

  def test_get_school_name

    assert_equal(@banana, "delicious")
    
    # assert_includes(@swimmer.school_id, @)
    # assert_includes(@swimmer.movies, @m2)
    # assert_includes(@swimmer.movies, @m3)
    # refute_includes(@david_lean.movies, @m4)
  end
end