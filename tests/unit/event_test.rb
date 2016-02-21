require 'test_helper'

class EventTest < Minitest::Test
  
  def setup
    super

    @shannon = Swimmer.new
    @shannon.first_name = "Shannon Event"
    @shannon.last_name = "Jackson"
    @shannon.save

    @andrew = Swimmer.new
    @andrew.first_name = "Andrew Event"
    @andrew.last_name = "Yolland"
    @andrew.save

    @event2 = Event.new
    @event2.event_name = "Sink"
    @event2.locked = false
    @event2.save

    @e = Event.new
    @e.event_name = "Swim"
    @e.locked = true
    @e.save

    @e3 = Event.new
    @e3.event_name = "Stay Dry"
    @e3.locked = false
    @e3.save

    @register = Signup.new
    @register.swimmer_id = @shannon.id
    @register.event_id = @e.id
    @register.save

    @register2 = Signup.new
    @register2.swimmer_id = @andrew.id
    @register2.event_id = @e.id
    @register2.save

    @register3 = Signup.new
    @register3.swimmer_id = @shannon.id
    @register3.event_id = @event2.id
    @register3.save

    @register4 = Signup.new
    @register4.swimmer_id = @andrew.id
    @register4.event_id = @event2.id
    @register4.save

    @f = Finish.new
    @f.swimmer_id = @shannon.id
    @f.event_id = @e.id
    @f.finish_time = 100
    @f.save

    @f2 = Finish.new
    @f2.swimmer_id = @andrew.id
    @f2.event_id = @e.id
    @f2.finish_time = 200
    @f2.save

    @f3 = Finish.new
    @f3.swimmer_id = @shannon.id
    @f3.event_id = @event2.id
    @f3.finish_time = 20
    @f3.save

  end

  def test_event_over
    assert_equal(false, @event2.event_over?)
    assert_equal(true, @e.event_over?)
    assert_equal(false, @e3.event_over?)
  end

  def test_locked_status
    assert_equal("Locked", @e.locked_status)
    assert_equal("Unlocked", @event2.locked_status)
  end

end