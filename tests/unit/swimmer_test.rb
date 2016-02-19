require 'test_helper'

class DirectorTest < Minitest::Test
    def setup
        super
        @banana = "Delicious"
    end

    def test_school_name
        assert_equal ("Delicious", @banana)
    end

end