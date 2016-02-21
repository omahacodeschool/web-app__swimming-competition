require 'test_helper'

class SignupTest < Minitest::Test
    def setup
        super
        @ocs = College.new
        @ocs.college_name = "Omaha Code School"
        @ocs.save
    
        @shannon = Swimmer.new
        @shannon.first_name = "Shannon Signup"
        @shannon.last_name = "Jackson"
        @shannon.college_id = @ocs.id
        @shannon.save
    
        @andrew = Swimmer.new
        @andrew.first_name = "Andrew Signup"
        @andrew.last_name = "Yolland"
        @andrew.college_id = @ocs.id
        @andrew.save
    
        @e2 = Event.new
        @e2.event_name = "Sink"
        @e2.locked = false
        @e2.save
    
        @e = Event.new
        @e.event_name = "Swim"
        @e.locked = false
        @e.save
    
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
        @register3.event_id = @e2.id
        @register3.save
    end

    def test_find_event_name
        assert_equal("Shannon Signup Jackson", @register.find_event)
        assert_equal("Andrew Signup Yolland", @register2.find_event)
        refute_equal("Andrew Signup Yolland", @register3.find_event)
    end

    def test_find_swimmer
        assert_equal(@shannon, @register.find_swimmer)
        assert_equal(@andrew, @register2.find_swimmer)
        refute_equal(@andrew, @register3.find_swimmer)
    end

    def test_find_swimmer_name
        assert_equal("Shannon Signup Jackson", @register.test_find_swimmer_name)
        assert_equal("Andrew Signup Yolland", @register2.find_swimmer_name)
        refute_equal("Andrew Signup Yolland", @register3.find_swimmer_name)
    end

    def test_find_swimmer_college
        assert_equal("Omaha Code School", @register2.find_swimmer_college)
    end

end