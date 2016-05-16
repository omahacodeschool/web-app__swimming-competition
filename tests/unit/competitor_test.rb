require 'test_helper'

class SwimmerTest < Minitest::Test
  def setup
    @banana = "Delicious"
  end

  def test_results
    assert_equal("Delicious",@banana)
  end
end