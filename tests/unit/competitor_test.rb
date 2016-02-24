require 'test_helper'

class CompetitorTest < Minitest::Test
  def setup
    @banana = "Delicious"
  end

  def check_competitors_college
    assert_equal("Delicious", @banana)
  end
end

# UNIT TESTS NEED TO BE DONE THIS WEEKEND NOT ACCEPTANCE TESTS