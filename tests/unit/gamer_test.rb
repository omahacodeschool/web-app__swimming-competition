require 'test_helper'

class GamerTest < Minitest::Test
  def setup
    @banana = "Delicious"
  end

  def test_all_results
    assert_equal("Delicious", @banana)
  end
end