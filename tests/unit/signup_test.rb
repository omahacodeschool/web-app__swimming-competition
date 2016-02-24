require 'test_helper'

class SignupTest < Minitest::Test
  def setup
    super

    @event1 = Event.new
    @event1.event_name = "50 meter butterfly"
    @event1.save
    
    @event2 = SignupResult.new
    @event2.swimmer_info_id = 1
    @event2.event_id = 1
    @event2.save

    @s1 = SwimmerInfo.new
    @s1.last_name = "Reed"
    @s1.first_name = "Lou"
    @s1.save


  end

  def test_event_name
    assert_equal("50 meter butterfly", @event1.event_name)
  end

  def test_swimmer_name
    assert_includes("Lou Reed", @s1.swimmer_name)
  end

  def test_swimmer_exist?
    assert_includes(, @s1)
  end

end