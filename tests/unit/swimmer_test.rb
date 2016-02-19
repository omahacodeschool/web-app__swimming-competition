require 'test_helper'

class SwimmerTest < Minitest::Test
  
    def setup
      super
      @shannon_jackson = Swimmer.new
      @shannon_jackson.first_name = "Shannon"
      @shannon_jackson.last_name = "Jackson"
      @shannon_jackson.save
    end

    def test_swimmer_name
        assert_equal("Shannon Jackson", @shannon_jackson.swimmer_name)
    end

end