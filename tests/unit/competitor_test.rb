require 'test_helper'

class CompetitorTest < Minitest::Test
  def setup
   @banana = "delish"
  end

  def test_school_name
    assert_equal("delish", @banana)
  end
end