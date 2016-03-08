require 'test_helper'

class SwimmerTest < Minitest::Test
  def setup
    super
  
    # EX P1: @banana = "delicious"

    @swimmer = Swimmer.new
    @swimmer.swimmer_name = "David"
    @swimmer.save

    @school = School.new
    @school.save
    @school.school_name = "OCS"
    @swimmer.school_id = @school.id
    @school.save
    @swimmer.save

    
    

  end

# Example Below:
  # def test_numbers_with_no_punctuation
  #   phone_num = "1231235555"
  #   assert_equal("(123) 123-5555", format_phone_number(phone_num))
  # end

# More Examples:
# assert_includes(@swimmer.movies, @m2)
#     assert_includes(@swimmer.movies, @m3)
#     refute_includes(@david_lean.movies, @m4)

  def test_get_school_name

    # EX P2: assert_equal(@banana, "delicious")
    
    assert_equal("OCS", @swimmer.get_school_name)

  end
end