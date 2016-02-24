require 'test_helper'

class FinishTest < Minitest::Test
  
    def setup
        super
        @ocs = College.new
        @ocs.college_name = "Omaha Code School"
        @ocs.save
    
        @shannon = Swimmer.new
        @shannon.first_name = "Shannon Winner"
        @shannon.last_name = "Jackson"
        @shannon.college_id = @ocs.id
        @shannon.save
    
        @andrew = Swimmer.new
        @andrew.first_name = "Andrew Winner"
        @andrew.last_name = "Yolland"
        @andrew.college_id = @ocs.id
        @andrew.save
    
        @e = Event.new
        @e.event_name = "Swim"
        @e.locked = true
        @e.save
    
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
    end

    def test_finish_array
        assert_equal([100,200],Finish.finish_array(@e.id))
    end

    def test_this_event
        assert_equal([@f.id, @f2.id], Finish.this_event(@e.id))
    end    
end