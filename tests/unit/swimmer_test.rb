require 'test_helper'

class SwimmerTest < Minitest::Test
  
  def setup
    super
    @ocs = College.new
    @ocs.college_name = "Omaha Code School"
    @ocs.save

    @shannon_jackson = Swimmer.new
    @shannon_jackson.first_name = "Shannon"
    @shannon_jackson.last_name = "Jackson"
    @shannon_jackson.college_id = @ocs.id
    @shannon_jackson.save

    @event = Event.new
    @event.event_name = "Swim"
    @event.save
    @event2 = Event.new
    @event2.event_name = "Sink"
    @event2.save

    @register = Signup.new
    @register.swimmer_id = @shannon_jackson.id
    @register.event_id = @event.id
    @register.save

    @f = Finish.new
    @f.swimmer_id = @shannon_jackson.id
    @f.event_id = @event.id
    @f.finish_time = 100
    @f.save

  end

  def test_swimmer_name
    assert_equal("Shannon Jackson", @shannon_jackson.swimmer_name)
  end

  def test_find_collge_name
    assert_equal("Omaha Code School", @shannon_jackson.find_college_name)
  end

  def test_registered_events
    assert_equal([@event.id], @shannon_jackson.registered_events)
    refute_equal([@event2.id], @shannon_jackson.registered_events)
  end

  def test_finishtime
    assert_equal(100, @shannon_jackson.finishtime(@event.id))
  end



end