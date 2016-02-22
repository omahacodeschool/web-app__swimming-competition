 require 'test_helper'

class SignupTest < Minitest::Test
      def setup
            super

            @swimmer1 = Swimmer.new
            @swimmer1.name = "Ben Seaver"
            @swimmer.save

            @swimmer2 = Swimmer.new
            @swimmer2.name = "Peter Brady"
            @swimmer2.save

            @signup1 = Signup.new
            @signup1.swimmer_id = "@swimmer1.id"
            @signup1.event_id = "@event1.id"
            @school1.save

            @signup2 = Signup.new
            @signup2.swimmer_id = "Wisconsin"
            @signup2.event_id = "@event2.id"
            @signup2.save

            @event1 = Event.new
            @event1.name = "100 meter freestyle"
            @event1.save

            @event2 = Event.new
            @event2.name = "100 meter backstroke"
            @event2.save
      end
      def test_name
            assert_includes(@signup1.name, @swimmer1)
            assert_includes(@signup2.name, @swimmer2)
      end
      def test_event_name
            assert_includes(@signup1.event_name, @swimmer1)
            assert_includes(@signup2.event_name, @swimmer2)
      end
      def test_event
            assert_includes(@signup1, @swimmer1)
            assert_includes(@signup2, @swimmer2)
      end

    


end