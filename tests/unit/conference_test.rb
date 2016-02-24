require 'test_helper'

class ConferenceTest < Minitest::Test
  def setup
    super

    @conference_1 = Conference.new
    @conference_1.name = "North"
    @conference_1.save

    @conference_2 = Conference.new
    @conference_2.name = "South"
    @conference_2.save    

    @polar_tech = Rookery.new
    @polar_tech.name = "Polar Tech"
    @polar_tech.conference_id = @conference_2.id
    @polar_tech.save

    @south_pole = Rookery.new
    @south_pole.name = "South Pole University"
    @south_pole.conference_id = @conference_2.id
    @south_pole.save

  end


  def test_has_a_rookery?
    assert_equal(true, @conference_2.has_a_rookery?)
    assert_equal(false, @conference_1.has_a_rookery?)
  end  

end