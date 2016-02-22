require 'test_helper'

class RookeryTest < Minitest::Test
  def setup
    super

    @conference_1 = Conference.new
    @conference_1.name = "North"
    @conference_1.save

    @conference_2 = Conference.new
    @conference_2.name = "South"
    @conference_2.save

    @event_1 = Event.new
    @event_1.name = "100m Waddle"
    @event_1.save

    @event_2 = Event.new
    @event_2.name = "Polar Plunge"
    @event_2.save

    @south_pole = Rookery.new
    @south_pole.name = "South Pole University"
    @south_pole.conference_id = @conference_1.id
    @south_pole.save

    @polar_tech = Rookery.new
    @polar_tech.name = "Polar Tech"
    @polar_tech.conference_id = @conference_2.id
    @polar_tech.save

    @audrey_hepburn = Penguin.new
    @audrey_hepburn.last_name = "Hepburn"
    @audrey_hepburn.first_name = "Audrey"
    @audrey_hepburn.rookery_id = @polar_tech.id
    @audrey_hepburn.save

    @duke_ellington = Penguin.new
    @duke_ellington.last_name = "Ellington"
    @duke_ellington.first_name = "Duke"
    @duke_ellington.rookery_id = @south_pole.id
    @duke_ellington.save

    @result_1 = Result.new
    @result_1.penguin_id = @duke_ellington.id
    @result_1.event_id = @event_1.id
    @result_1.time = 98
    @result_1.save

    @result_2 = Result.new
    @result_2.penguin_id = @audrey_hepburn.id
    @result_2.event_id = @event_2.id
    @result_2.time = 99
    @result_2.save

  end


  def test_conference_access
    assert_equal(@conference_1.name, @south_pole.conference_access.name)
    assert_equal(@conference_2.id, @polar_tech.conference_access.id)
  end  

  #Is there a way to test this functionality?
  # def test_delete_penguins
  #   assert_equal(@duke_ellington, @south_pole.delete_penguins)
  # end 



end