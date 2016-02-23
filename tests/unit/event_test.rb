require 'test_helper'
class EventTest < Minitest::Test
  def setup
      super

      @swimmer1 = Swimmer.new
      @swimmer1.name = "Alex Keaton"
      @swimmer1.save

      @swimmer2 = Swimmer.new
      @swimmer2.name = "Mike Seaver"
      @swimmer2.save

      @swimmer3 = Swimmer.new
      @swimmer3.name = "Mike Holmgren"
      @swimmer3.save

      @event1 = Event.new
      @event1.fist_place_swimmer = @swimmer1.id
      @event1.save

      @event2 = Event.new
      @event2.second_place_swimmer = @swimmer2.id
      @event2.save

      @event3 = Event.new
      @event3.third_place_swimmer = @swimmer3.id
      @event3.save
  end
  def test_first_place_name
    assert_includes(@swimmer1.name, @event1.first_place_name)
  end
  def test_second_place_name
    assert_includes(@event2.second_place_name, @swimmer2.name)
  end
  def test_third_place_name
    assert_includes(@event3.third_place_name, @swimmer3.name)
  end
end