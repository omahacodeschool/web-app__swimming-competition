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
  end

  def test_conference
    assert_equal(@u1.conference, "Online")
    assert_equal(@u2.conference, "Party On")
    refute_equal(@u1.conference, "Party On")
  end
end