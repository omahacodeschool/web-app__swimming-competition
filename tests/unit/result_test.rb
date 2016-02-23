require 'test_helper'

class ResultTest < Minitest::Test
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
    @backstroke.event_locked = true
    @backstroke.save

    @breaststroke = Event.new
    @breaststroke.event_name = "100 m Breaststroke"
    @breaststroke.event_locked = false
    @breaststroke.save

    @freestyle = Event.new
    @freestyle.event_name = "100 m Freestyle"
    @freestyle.event_locked = true
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
    @r4.event_id = @breaststroke.id
    @r4.swimmer_time = 1.33
    @r4.save

    @r5 = Result.new
    @r5.swimmer_id = @ryan_lochte.id
    @r5.event_id = @breaststroke.id
    @r5.swimmer_time = 1.34
    @r5.save

    @r6 = Result.new
    @r6.swimmer_id = @nick_keenan.id
    @r6.event_id = @breaststroke.id
    @r6.swimmer_time = 2.43
    @r6.save

    @r7 = Result.new
    @r7.swimmer_id = @micheal_phelps.id
    @r7.event_id = @freestyle.id
    @r7.swimmer_time = 1.33
    @r7.save

    @r8 = Result.new
    @r8.swimmer_id = @ryan_lochte.id
    @r8.event_id = @freestyle.id
    @r8.swimmer_time = 1.34
    @r8.save   

    @results = Result.where({"event_id" => @backstroke.id})
    @results2 = Result.where({"event_id" => @breaststroke.id})
    @duplicates = Result.where({"event_id" => @freestyle.id})
  end

  def test_swimmer
    assert_equal(@r4.swimmer, "Micheal Phelps")
    assert_equal(@r2.swimmer, "Ryan Lochte")
    refute_equal(@r3.swimmer, "Ryan Lochte")
  end

  def test_event
    assert_equal(@r1.event, "100 m Backstroke")
    assert_equal(@r4.event, "100 m Breaststroke")
    refute_equal(@r6.event, "100 m Freestyle")
  end

  def test_event_locked?
    assert_equal(@r1.event_locked?, true)
    assert_equal(@r4.event_locked?, false)
    refute_equal(@r6.event_locked?, true)
  end

  def test_university
    assert_equal(@r1.university, "University of Pheonix")
    assert_equal(@r5.university, "Kirkwood College")
    refute_equal(@r6.university, "University of Pheonix")
  end

  def test_conferece
    assert_equal(@r1.conference, "Online")
    assert_equal(@r5.conference, "Party On")
    refute_equal(@r6.university, "Online")
  end

  def test_result_top_swimmers
    assert_equal(@results.top_swimmers, [@r1, @r2, @r3])
    assert_equal(@results2.top_swimmers, [@r4, @r5, @r6])
    refute_equal(@results.top_swimmers, [@r2, @r1, @r3])
  end

  def test_result_duplicate_swimmers
    assert_equal(@duplicates.duplicate_swimmer(@freestyle.id, @micheal_phelps.id), true)    
    assert_equal(@duplicates.duplicate_swimmer(@freestyle.id, @nick_keenan.id), false)       
  end  
end





