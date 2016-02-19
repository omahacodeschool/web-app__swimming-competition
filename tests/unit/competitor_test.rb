require 'test_helper'

class CompetitorTest < Minitest::Test
  def setup
    @banana = "Delicious"
  end

  def test_sample
    assert_includes("Delicious", @banana)
  end
end