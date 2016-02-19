require 'test_helper'

class SignupTest < Minitest::Test
  
  def setup
    super
    @ocs = College.new
    @ocs.college_name = "Omaha Code School"
    @ocs.save

    @shannon = Swimmer.new
    @shannon.first_name = "Shannon"
    @shannon.last_name = "Jackson"
    @shannon.college_id = @ocs.id
    @shannon.save

    @andrew = Swimmer.new
    @andrew.first_name = "Andrew"
    @andrew.last_name = "Yolland"
    @andrew.save

    @e2 = Event.new
    @e2.event_name = "Sink"
    @e2.locked = false
    @e2.save

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

    @first = Rank.new
    @first.rank_name = "First Place"
    @first.save

    @second = Rank.new
    @second.rank_name = "Second Place"
    @second.save

    @w1 = Winner.new
    @w1.rank_id = 1
    @w1.finish_id = @f.id
    @w1.save

    @w2 = Winner.new
    @w2.rank_id = 2
    @w2.finish_id = @f2.id
    @w2.save

#DB.define_table("winners")
#DB.define_column("winners","rank_id","integer")
#DB.define_column("winners","finish_id","integer")

  end

  def places
    assert_equal("First Place", @w1.places)
    assert_equal("Second Place", @w2.places)
  end

  def find_time
    assert_equal(100, @w1.find_time)
    refute_equal(100, @w2.find_time)

  end

  def find_swimmer
    assert_equal("Shannon Jackson", @w1.find_swimmer)
    assert_equal("Andrew Yolland", @w2.find_swimmer)
  end


end