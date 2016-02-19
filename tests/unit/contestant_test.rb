require 'test_helper'

class ContestantTest < Minitest::Test
  def setup
    @banana = "Delicious"
  end

  def test_cities
    assert_equal("Delicious", @banana)
  end
end