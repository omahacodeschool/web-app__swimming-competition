require 'test_helper'

class StudentTest < Minitest::Test
  def setup
    @banana = "Delicious"
  end

  def test_access_college
    assert_equal("Delicious", @banana)
  end

  # def test_all_registrations

  # end

  # def test_all_completed_performances

  # end


end