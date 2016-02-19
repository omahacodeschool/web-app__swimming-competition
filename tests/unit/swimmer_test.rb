require 'test_helper'

class SwimmerTest < Minitest::Test
  def setup
    @banana = "delicious"
  end

  def test_swimmer_team
    assert_equal("delicious", @banana)
  end
end

    # @s1 = Swimmer.new
    # @m4.title = "Hurt Locker"
    # @m4.director_id = @katherine_bigelow.id
    # @m4.save

    # assert_includes()
    # assert_includes()
    # assert_includes()
    # refute_includes(@david_lean.movies, @m4)