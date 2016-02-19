require 'test_helper'

class SwimmerTest < Minitest::Test
  def setup
    super
    @c1 = Conference.new
    @c1.conference_name = "Online"
    @c1.save

    @c2 = Conference.new
    @c2.conference_name = "Party On"
    @c2.save

    @u1 = University.new
    @u1.university_name = "University of Pheonix"
    @u1.conference_id = @c1.id
    @u1.save

    @u2 = University.new
    @u2.university_name = "Kirkwood College"
    @u2.conference_id = @c2.id
    @u2.save

    @micheal_phelps = Swimmer.new
    @micheal_phelps.swimmer_name = "Micheal Phelps"
    @micheal_phelps.university_id = @u1.id
    @micheal_phelps.save

    @ryan_lochte = Swimmer.new
    @ryan_lochte.swimmer_name = "Ryan Lochte"
    @ryan_lochte.university_id = @u2.id
    @ryan_lochte.save

    @nick_keenan = Swimmer.new  
    @nick_keenan.swimmer_name = "Nick Keenan"
    @nick_keenan.university_id = @u2.id
    @nick_keenan.save

    @backstroke = Event.new
    @backstroke.event_name = "100 m Backstroke"
    @baskstroke.event_locked = true
    @backstroke.save

    @breastroke = Event.new
    @breastroke.event_name = "100 m Breastroke"
    @baskstroke.event_locked = false
    @breastroke.save

    @freestyle = Event.new
    @freestyle.event_name = "100 m Freestyle"
    @baskstroke.event_locked = true
    @freestyle.save

    @r1 = Result.new
    @r1.swimmer_id = @micheal_phelps.id
    @r1.event_id = @backstroke.id
    @r1.swimmer_time = 1.33
    @r1.save

    @r2 = Result.new
    @r2.swimmer_id = @ryan_lochte.id
    @r2.event_id = @backstroke.id
    @r2.swimmer_time = 1.34
    @r2.save

    @r3 = Result.new
    @r3.swimmer_id = @nick_keenan.id
    @r3.event_id = @backstroke.id
    @r3.swimmer_time = 2.43
    @r3.save

    @r4 = Result.new
    @r4.swimmer_id = @micheal_phelps.id
    @r4.event_id = @breastroke.id
    @r4.swimmer_time = 1.33
    @r4.save

    @r5 = Result.new
    @r5.swimmer_id = @ryan_lochte.id
    @r5.event_id = @breastroke.id
    @r5.swimmer_time = 1.34
    @r5.save

    @r6 = Result.new
    @r6.swimmer_id = @nick_keenan.id
    @r6.event_id = @breastroke.id
    @r6.swimmer_time = 2.43
    @r6.save

  end
#This method exists in University Class, not actually sure that it even works or is used anywhere.
  def test_swimmer
    assert_equal(@r5.swimmer, "Micheal Phelps")
    assert_equal(@r2.swimmer, "Ryan Lochte")
    refute_equal(@r3.swimmer, "Ryan Lochte")
  end

  def test_event
    assert_equal(@r1.event, "100 m Backstroke")
    assert_equal(@r4.event, "100 m Breastroke")
    refute_equal(@r6.event, "100 m Freestyle")
  end
end