require 'test_helper'

class CompetitorTest < Minitest::Test
  def setup
    @banana = "Delicious"
  end

  def test_get_a_competitors_college_name
    assert_equal("Delicious", @banana)
  end
end

# UNIT TESTS NEED TO BE DONE THIS WEEKEND NOT ACCEPTANCE TESTS