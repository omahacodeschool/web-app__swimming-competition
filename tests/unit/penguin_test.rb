require 'test_helper'

class PenguinTest < Minitest::Test
  def setup
    @banana = "Delicious"
  end

  def test_rookery_access
    assert_equal("Delicious", @banana)
  end
end